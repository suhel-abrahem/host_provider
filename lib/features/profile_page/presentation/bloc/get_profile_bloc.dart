import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../login_page/domain/entities/login_state_entity.dart';
import '../../domain/usecases/get_profile_usecase.dart';
import '../../domain/usecases/logout_usecase.dart';
import '../../../refresh_token/domain/usecases/refresh_token_usecase.dart';

import '../../../../config/app/app_preferences.dart';
import '../../../../core/data_state/data_state.dart';
import '../../../../core/dependencies_injection.dart';
import '../../../refresh_token/data/models/refresh_token_model.dart';
import '../../data/models/profile_model.dart';
import '../../domain/entities/profile_entity.dart';
import '../../domain/usecases/update_profile_usecase.dart';

part 'get_profile_event.dart';
part 'get_profile_state.dart';
part 'get_profile_bloc.freezed.dart';

class GetProfileBloc extends Bloc<GetProfileEvent, GetProfileState> {
  final GetProfileUseCase _profileUsecase;
  final UpdateProfileUsecase _updateProfileUsecase;
  final LogoutUseCase _logoutUsecase;
  final RefreshTokenUsecase _refreshTokenUsecase;
  GetProfileBloc(
    this._profileUsecase,
    this._refreshTokenUsecase,
    this._logoutUsecase,
    this._updateProfileUsecase,
  ) : super(GetProfileState.initial()) {
    on<GetProfileEventStarted>((event, emit) {
      emit(GetProfileState.initial());
    });
    on<GetProfileEventGetProfile>((event, emit) async {
      final LoginStateEntity? userInfo = getItInstance<AppPreferences>()
          .getUserInfo();
      emit(GetProfileState.loading());
      await _refreshTokenUsecase
          .call(
            params: RefreshTokenModel(
              token: userInfo?.access_token,
              refresh_token: userInfo?.refresh_token,
            ),
          )
          .then((onValue) async {
            if (onValue is DataSuccess) {
              await _profileUsecase
                  .call(
                    params: event.profileModel?.copyWith(
                      authToken: onValue?.data?.access_token,
                    ),
                  )
                  .then((getServicesOnValue) {
                    if (getServicesOnValue is DataSuccess) {
                      emit(
                        GetProfileState.loaded(
                          profileEntity: getServicesOnValue?.data,
                        ),
                      );
                    } else if (getServicesOnValue is UnauthenticatedDataState) {
                      emit(GetProfileState.unauthorized());
                    } else if (getServicesOnValue is NOInternetDataState) {
                      emit(GetProfileState.noInternet());
                    } else if (onValue is DataFailed) {
                      emit(GetProfileState.error());
                    } else {
                      emit(GetProfileState.error());
                    }
                  });
            } else if (onValue is UnauthenticatedDataState) {
              emit(GetProfileState.unauthorized());
            } else if (onValue is NOInternetDataState) {
              emit(GetProfileState.noInternet());
            } else if (onValue is DataFailed) {
              emit(GetProfileState.error());
            } else {
              emit(GetProfileState.error());
            }
          });
    });
    on<GetProfileEventLogout>((event, emit) async {
      final LoginStateEntity? userInfo = getItInstance<AppPreferences>()
          .getUserInfo();

      emit(GetProfileState.loading());
      await _refreshTokenUsecase
          .call(
            params: RefreshTokenModel(
              token: userInfo?.access_token,
              refresh_token: userInfo?.refresh_token,
            ),
          )
          .then((onValue) async {
            if (onValue is DataSuccess) {
              await _logoutUsecase
                  .call(
                    params: ProfileModel(
                      authToken: onValue?.data?.access_token,
                      acceptLanguage: event.profileModel?.acceptLanguage,
                    ),
                  )
                  .then((logoutOnValue) {
                    if (logoutOnValue is DataSuccess) {
                      emit(GetProfileState.loggedOut());
                    } else if (logoutOnValue is UnauthenticatedDataState) {
                      emit(GetProfileState.unauthorized());
                    } else if (logoutOnValue is NOInternetDataState) {
                      emit(GetProfileState.noInternet());
                    } else if (onValue is DataFailed) {
                      emit(GetProfileState.logoutError());
                    } else {
                      emit(GetProfileState.logoutError());
                    }
                  });
            } else if (onValue is UnauthenticatedDataState) {
              emit(GetProfileState.unauthorized());
            } else if (onValue is NOInternetDataState) {
              emit(GetProfileState.noInternet());
            } else if (onValue is DataFailed) {
              emit(GetProfileState.logoutError());
            } else {
              emit(GetProfileState.logoutError());
            }
          });
    });
    on<GetProfileEventUpdateProfile>((event, emit) async {
      final LoginStateEntity? userInfo = getItInstance<AppPreferences>()
          .getUserInfo();
      emit(GetProfileState.loading());
      await _refreshTokenUsecase
          .call(
            params: RefreshTokenModel(
              token: userInfo?.access_token,
              refresh_token: userInfo?.refresh_token,
            ),
          )
          .then((onValue) async {
            if (onValue is DataSuccess) {
              await _updateProfileUsecase
                  .call(
                    params: event.profileModel?.copyWith(
                      authToken: onValue?.data?.access_token,
                    ),
                  )
                  .then((updateProfileOnValue) {
                    if (updateProfileOnValue is DataSuccess) {
                      emit(
                        GetProfileState.updated(
                          profileEntity: updateProfileOnValue?.data,
                        ),
                      );
                    } else if (updateProfileOnValue
                        is UnauthenticatedDataState) {
                      emit(GetProfileState.unauthorized());
                    } else if (updateProfileOnValue is NOInternetDataState) {
                      emit(GetProfileState.noInternet());
                    } else {
                      emit(GetProfileState.updateError());
                    }
                  });
            } else if (onValue is UnauthenticatedDataState) {
              emit(GetProfileState.unauthorized());
            } else if (onValue is NOInternetDataState) {
              emit(GetProfileState.noInternet());
            } else {
              emit(GetProfileState.updateError());
            }
          });
    });
  }
}
