import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/resource/common_entity/service_entity.dart';
import '../../data/models/get_service_model.dart';
import '../../domain/usecases/get_services_usecase.dart';
import '../../../refresh_token/domain/usecases/refresh_token_usecase.dart';

import '../../../../config/app/app_preferences.dart';
import '../../../../core/data_state/data_state.dart';
import '../../../../core/dependencies_injection.dart';
import '../../../login_page/domain/entities/login_state_entity.dart';
import '../../../refresh_token/data/models/refresh_token_model.dart';
import '../../data/models/set_service_model.dart';

part 'category_services_event.dart';
part 'category_services_state.dart';
part 'category_services_bloc.freezed.dart';

class CategoryServicesBloc
    extends Bloc<CategoryServicesEvent, CategoryServicesState> {
  final RefreshTokenUsecase _refreshTokenUsecase;
  final GetServicesUsecase _getServicesUsecase;

  CategoryServicesBloc(this._getServicesUsecase, this._refreshTokenUsecase)
    : super(CategoryServicesState.initial()) {
    on<CategoryServicesEventStarted>((event, emit) {});
    on<CategoryServicesEventGet>((event, emit) async {
      final LoginStateEntity? userInfo = getItInstance<AppPreferences>()
          .getUserInfo();
      emit(CategoryServicesState.loading());
      await _refreshTokenUsecase
          .call(
            params: RefreshTokenModel(
              token: userInfo?.access_token,
              refresh_token: userInfo?.refresh_token,
            ),
          )
          .then((onValue) async {
            if (onValue is DataSuccess) {
              await _getServicesUsecase
                  .call(
                    params: event.getServiceModel?.copyWith(
                      Authorization: onValue?.data?.access_token,
                    ),
                  )
                  .then((getServicesOnValue) {
                    if (getServicesOnValue is DataSuccess) {
                      emit(CategoryServicesState.got(getServicesOnValue?.data));
                    } else if (getServicesOnValue is UnauthenticatedDataState) {
                      emit(CategoryServicesState.unAuthorized());
                    } else if (getServicesOnValue is NOInternetDataState) {
                      emit(CategoryServicesState.noInternet());
                    } else if (getServicesOnValue is DataFailed) {
                      emit(CategoryServicesState.getError());
                    } else {
                      emit(CategoryServicesState.getError());
                    }
                  });
            } else if (onValue is UnauthenticatedDataState) {
              emit(CategoryServicesState.unAuthorized());
            } else if (onValue is NOInternetDataState) {
              emit(CategoryServicesState.noInternet());
            } else if (onValue is DataFailed) {
              emit(CategoryServicesState.getError());
            } else {
              emit(CategoryServicesState.getError());
            }
          });
    });
  }
}
