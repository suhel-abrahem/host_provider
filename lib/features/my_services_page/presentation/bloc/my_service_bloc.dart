import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hosta_provider/features/category_services_page/data/models/get_service_model.dart';
import 'package:hosta_provider/features/my_services_page/domain/usecases/my_service_usecase.dart';

import '../../../../config/app/app_preferences.dart';
import '../../../../core/data_state/data_state.dart';
import '../../../../core/dependencies_injection.dart';
import '../../../../core/resource/common_entity/service_entity.dart';
import '../../../login_page/domain/entities/login_state_entity.dart';
import '../../../refresh_token/data/models/refresh_token_model.dart';
import '../../../refresh_token/domain/usecases/refresh_token_usecase.dart';

part 'my_service_event.dart';
part 'my_service_state.dart';
part 'my_service_bloc.freezed.dart';

class MyServiceBloc extends Bloc<MyServiceEvent, MyServiceState> {
  final MyServiceUsecase _myServiceUsecase;
  final RefreshTokenUsecase _refreshTokenUsecase;
  MyServiceBloc(this._myServiceUsecase, this._refreshTokenUsecase)
    : super(MyServiceState.initial()) {
    on<MyServiceEventStarted>((event, emit) {});
    on<MyServiceEventGet>((event, emit) async {
      final LoginStateEntity? userInfo = getItInstance<AppPreferences>()
          .getUserInfo();
      emit(MyServiceState.loading());
      await _refreshTokenUsecase
          .call(
            params: RefreshTokenModel(
              token: userInfo?.access_token,
              refresh_token: userInfo?.refresh_token,
            ),
          )
          .then((onValue) async {
            print(
              "categoris page bloc get auth:${onValue?.data?.access_token}",
            );
            if (onValue is DataSuccess) {
              print(
                "bloc token: ${event.getServiceModel?.copyWith(Authorization: onValue?.data?.access_token)}",
              );
              await _myServiceUsecase
                  .call(
                    params: event.getServiceModel?.copyWith(
                      Authorization: onValue?.data?.access_token,
                    ),
                  )
                  .then((getServicesOnValue) {
                    print(
                      "category page bloc get Services:${getServicesOnValue?.error}",
                    );
                    if (getServicesOnValue is DataSuccess) {
                      emit(MyServiceState.got(getServicesOnValue?.data));
                    } else if (getServicesOnValue is UnauthenticatedDataState) {
                      emit(MyServiceState.unAuthorized());
                    } else if (getServicesOnValue is NOInternetDataState) {
                      emit(MyServiceState.noInternet());
                    } else if (getServicesOnValue is DataFailed) {
                      emit(MyServiceState.getError());
                    } else {
                      emit(MyServiceState.getError());
                    }
                  });
            } else if (onValue is UnauthenticatedDataState) {
              emit(MyServiceState.unAuthorized());
            } else if (onValue is NOInternetDataState) {
              emit(MyServiceState.noInternet());
            } else if (onValue is DataFailed) {
              emit(MyServiceState.getError());
            } else {
              emit(MyServiceState.getError());
            }
          });
    });
  }
}
