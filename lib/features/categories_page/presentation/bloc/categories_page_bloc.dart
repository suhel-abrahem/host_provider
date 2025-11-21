import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../config/app/app_preferences.dart';
import '../../../../core/data_state/data_state.dart';
import '../../../../core/dependencies_injection.dart';
import '../../data/models/get_category_model.dart';
import '../../domain/entities/category_entity.dart';
import '../../../login_page/domain/entities/login_state_entity.dart';
import '../../../refresh_token/data/models/refresh_token_model.dart';
import '../../../refresh_token/domain/usecases/refresh_token_usecase.dart';

import '../../domain/usecases/get_category_usecase.dart';

part 'categories_page_event.dart';
part 'categories_page_state.dart';
part 'categories_page_bloc.freezed.dart';

class CategoriesPageBloc
    extends Bloc<CategoriesPageEvent, CategoriesPageState> {
  final GetCategoryUsecase _getCategoryUsecase;
  final RefreshTokenUsecase _refreshTokenUsecase;
  CategoriesPageBloc(this._getCategoryUsecase, this._refreshTokenUsecase)
    : super(CategoriesPageState.initial()) {
    on<CategoriesPageEventStarted>((event, emit) {});
    on<CategoriesPageEventGet>((event, emit) async {
      final LoginStateEntity? userInfo = getItInstance<AppPreferences>()
          .getUserInfo();
      emit(CategoriesPageState.loading());
      await _refreshTokenUsecase
          .call(
            params: RefreshTokenModel(
              token: userInfo?.access_token,
              refresh_token: userInfo?.refresh_token,
            ),
          )
          .then((onValue) async {
            if (onValue is DataSuccess) {
              await _getCategoryUsecase
                  .call(
                    params: event.getCategoryModel?.copyWith(
                      Authorization: onValue?.data?.access_token,
                    ),
                  )
                  .then((getCategoriesOnValue) {
                    if (getCategoriesOnValue is DataSuccess) {
                      emit(CategoriesPageState.got(getCategoriesOnValue?.data));
                    } else if (getCategoriesOnValue
                        is UnauthenticatedDataState) {
                      emit(CategoriesPageState.unAuthorized());
                    } else if (getCategoriesOnValue is NOInternetDataState) {
                      emit(CategoriesPageState.noInternet());
                    } else if (getCategoriesOnValue is DataFailed) {
                      emit(CategoriesPageState.error());
                    } else {
                      emit(CategoriesPageState.error());
                    }
                  });
            } else if (onValue is UnauthenticatedDataState) {
              emit(CategoriesPageState.unAuthorized());
            } else if (onValue is NOInternetDataState) {
              emit(CategoriesPageState.noInternet());
            } else if (onValue is DataFailed) {
              emit(CategoriesPageState.error());
            } else {
              emit(CategoriesPageState.error());
            }
          });
    });
  }
}
