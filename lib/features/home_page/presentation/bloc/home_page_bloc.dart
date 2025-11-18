import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hosta_provider/config/app/app_preferences.dart';
import 'package:hosta_provider/core/data_state/data_state.dart';
import 'package:hosta_provider/core/dependencies_injection.dart';
import 'package:hosta_provider/features/home_page/domain/entities/home_page_entity.dart';
import 'package:hosta_provider/features/home_page/domain/usecases/home_page_usecase.dart';
import 'package:hosta_provider/features/login_page/domain/entities/login_state_entity.dart';
import 'package:hosta_provider/features/refresh_token/data/models/refresh_token_model.dart';
import 'package:hosta_provider/features/refresh_token/domain/usecases/refresh_token_usecase.dart';

import '../../data/models/home_page_model.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';
part 'home_page_bloc.freezed.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  final HomePageUseCase _homePageUseCase;
  final RefreshTokenUsecase _refreshTokenUsecase;
  HomePageBloc(this._homePageUseCase, this._refreshTokenUsecase)
    : super(HomePageState.initial()) {
    on<HomePageEventStarted>((event, emit) {
      emit(HomePageState.initial());
    });
    on<HomePageEventFetchHomePageData>((event, emit) async {
      LoginStateEntity? userInfo = getItInstance<AppPreferences>()
          .getUserInfo();
      emit(HomePageState.loading());
      await _refreshTokenUsecase
          .call(
            params: RefreshTokenModel(refresh_token: userInfo?.refresh_token),
          )
          .then((onValue) async {
            print("Refresh token state: $onValue");
            if (onValue is NOInternetDataState) {
              emit(HomePageState.noInternet());
            } else if (onValue is DataFailed) {
              emit(HomePageState.error(message: onValue?.error ?? ""));
            } else if (onValue is DataSuccess) {
              HomePageModel homePageModel = HomePageModel(
                token: onValue?.data?.access_token,
                acceptLanguage: event.model?.acceptLanguage ?? "en",
              );
              await _homePageUseCase.call(params: homePageModel).then((value) {
                print("Home page state: $value");
                if (value is NOInternetDataState) {
                  emit(HomePageState.noInternet());
                } else if (value is DataFailed) {
                  emit(HomePageState.error(message: value?.error ?? ""));
                } else if (value is DataSuccess) {
                  print("value data: ${value?.data}");
                  if (value?.data != null) {
                    emit(HomePageState.loaded(data: value?.data));
                  } else {
                    emit(HomePageState.noData());
                  }
                } else if (value is UnauthenticatedDataState) {
                  emit(HomePageState.unauthenticated());
                } else {
                  emit(HomePageState.error(message: "Something went wrong"));
                }
              });
            } else if (onValue is UnauthenticatedDataState) {
              emit(HomePageState.unauthenticated());
            } else {
              emit(HomePageState.error(message: "Something went wrong"));
            }
          });
    });
  }
}
