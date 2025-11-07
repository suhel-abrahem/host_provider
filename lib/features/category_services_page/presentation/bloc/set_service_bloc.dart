import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hosta_provider/features/category_services_page/data/models/set_service_model.dart';
import 'package:hosta_provider/features/category_services_page/domain/usecases/delete_service_usecase.dart';
import 'package:hosta_provider/features/category_services_page/domain/usecases/set_service_usecase.dart';
import 'package:hosta_provider/features/category_services_page/domain/usecases/update_service_usecase.dart';

import '../../../../config/app/app_preferences.dart';
import '../../../../core/data_state/data_state.dart';
import '../../../../core/dependencies_injection.dart';
import '../../../../core/resource/common_entity/service_entity.dart';
import '../../../login_page/domain/entities/login_state_entity.dart';
import '../../../refresh_token/data/models/refresh_token_model.dart';
import '../../../refresh_token/domain/usecases/refresh_token_usecase.dart';

part 'set_service_event.dart';
part 'set_service_state.dart';
part 'set_service_bloc.freezed.dart';

class SetServiceBloc extends Bloc<SetServiceEvent, SetServiceState> {
  final SetServiceUseCase _serviceUseCase;
  final UpdateServiceUsecase _updateServiceUsecase;
  final DeleteServiceUsecase _deleteServiceUsecase;
  final RefreshTokenUsecase _refreshTokenUsecase;
  SetServiceBloc(
    this._serviceUseCase,
    this._refreshTokenUsecase,
    this._updateServiceUsecase,
    this._deleteServiceUsecase,
  ) : super(SetServiceState.initial()) {
    on<SetServiceEventStarted>((event, emit) {});
    on<SetServiceEventSet>((event, emit) async {
      final LoginStateEntity? userInfo = getItInstance<AppPreferences>()
          .getUserInfo();
      emit(SetServiceState.loading());
      await _refreshTokenUsecase
          .call(
            params: RefreshTokenModel(
              token: userInfo?.access_token,
              refresh_token: userInfo?.refresh_token,
            ),
          )
          .then((onValue) async {
            print("categoris page bloc get auth:$onValue");
            if (onValue is DataSuccess) {
              print(
                "bloc cat id: ${event.setServiceModel?.serviceModel?.service_id}",
              );
              await _serviceUseCase
                  .call(
                    params: event.setServiceModel?.copyWith(
                      authorization: onValue?.data?.access_token,
                    ),
                  )
                  .then((setServicesOnValue) {
                    print(
                      "category page bloc get Services:${setServicesOnValue?.error}",
                    );
                    if (setServicesOnValue is DataSuccess) {
                      emit(SetServiceState.added(setServicesOnValue?.data));
                    } else if (setServicesOnValue is UnauthenticatedDataState) {
                      emit(SetServiceState.unAuthorized());
                    } else if (setServicesOnValue is NOInternetDataState) {
                      emit(SetServiceState.noInternet());
                    } else if (setServicesOnValue is DataError) {
                      emit(
                        SetServiceState.SetServiceStateAlreadyExist(
                          serviceEntity: setServicesOnValue?.data,
                        ),
                      );
                    } else {
                      emit(SetServiceState.setError());
                    }
                  });
            } else if (onValue is UnauthenticatedDataState) {
              emit(SetServiceState.unAuthorized());
            } else if (onValue is NOInternetDataState) {
              emit(SetServiceState.noInternet());
            } else if (onValue is DataFailed) {
              emit(SetServiceState.setError());
            } else {
              emit(SetServiceState.setError());
            }
          });
    });
    on<SetServiceEventUpdate>((event, emit) async {
      final LoginStateEntity? userInfo = getItInstance<AppPreferences>()
          .getUserInfo();
      emit(SetServiceState.loading());
      await _refreshTokenUsecase
          .call(
            params: RefreshTokenModel(
              token: userInfo?.access_token,
              refresh_token: userInfo?.refresh_token,
            ),
          )
          .then((onValue) async {
            print("categoris page bloc get auth:$onValue");
            if (onValue is DataSuccess) {
              print(
                "bloc cat id: ${event.setServiceModel?.serviceModel?.service_id}",
              );
              await _updateServiceUsecase
                  .call(
                    params: event.setServiceModel?.copyWith(
                      authorization: onValue?.data?.access_token,
                    ),
                  )
                  .then((setServicesOnValue) {
                    print(
                      "category page bloc get Services:${setServicesOnValue?.error}",
                    );
                    if (setServicesOnValue is DataSuccess) {
                      emit(SetServiceState.updated(setServicesOnValue?.data));
                    } else if (setServicesOnValue is UnauthenticatedDataState) {
                      emit(SetServiceState.unAuthorized());
                    } else if (setServicesOnValue is NOInternetDataState) {
                      emit(SetServiceState.noInternet());
                    } else if (setServicesOnValue is DataError) {
                      emit(
                        SetServiceState.SetServiceStateAlreadyExist(
                          serviceEntity: setServicesOnValue?.data,
                        ),
                      );
                    } else if (onValue is NotFoundDataState) {
                      emit(SetServiceState.error());
                    } else {
                      emit(SetServiceState.setError());
                    }
                  });
            } else if (onValue is UnauthenticatedDataState) {
              emit(SetServiceState.unAuthorized());
            } else if (onValue is NOInternetDataState) {
              emit(SetServiceState.noInternet());
            } else if (onValue is DataFailed) {
              emit(SetServiceState.setError());
            } else {
              emit(SetServiceState.setError());
            }
          });
    });
    on<SetServiceEventDelete>((event, emit) async {
      final LoginStateEntity? userInfo = getItInstance<AppPreferences>()
          .getUserInfo();
      emit(SetServiceState.loading());
      await _refreshTokenUsecase
          .call(
            params: RefreshTokenModel(
              token: userInfo?.access_token,
              refresh_token: userInfo?.refresh_token,
            ),
          )
          .then((onValue) async {
            print("categoris page bloc get auth:$onValue");
            if (onValue is DataSuccess) {
              print(
                "bloc cat id: ${event.setServiceModel?.serviceModel?.service_id}",
              );
              await _deleteServiceUsecase
                  .call(
                    params: event.setServiceModel?.copyWith(
                      authorization: onValue?.data?.access_token,
                    ),
                  )
                  .then((setServicesOnValue) {
                    print(
                      "category page bloc get Services:${setServicesOnValue?.error}",
                    );
                    print("im delete bloc: $setServicesOnValue");
                    if (setServicesOnValue is DataSuccess) {
                      emit(SetServiceState.deleted(setServicesOnValue.data));
                    } else if (setServicesOnValue is UnauthenticatedDataState) {
                      emit(SetServiceState.unAuthorized());
                    } else if (setServicesOnValue is NOInternetDataState) {
                      emit(SetServiceState.noInternet());
                    } else if (setServicesOnValue is DataError) {
                      emit(
                        SetServiceState.SetServiceStateAlreadyExist(
                          serviceEntity: setServicesOnValue.data,
                        ),
                      );
                    } else if (onValue is NotFoundDataState) {
                      emit(SetServiceState.error());
                    } else {
                      emit(SetServiceState.setError());
                    }
                  });
            } else if (onValue is UnauthenticatedDataState) {
              emit(SetServiceState.unAuthorized());
            } else if (onValue is NOInternetDataState) {
              emit(SetServiceState.noInternet());
            } else if (onValue is DataFailed) {
              emit(SetServiceState.setError());
            } else {
              emit(SetServiceState.setError());
            }
          });
    });
  }
}
