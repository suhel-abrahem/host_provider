import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../login_page/domain/entities/login_state_entity.dart';
import '../../data/models/profile_model.dart';
import '../../data/models/set_working_hours_model.dart';
import '../../domain/usecases/get_working_time_usecase.dart';
import '../../domain/usecases/set_working_time_usecase.dart';
import '../../domain/usecases/update_working_time_usecase.dart';
import '../../../refresh_token/domain/usecases/refresh_token_usecase.dart';

import '../../../../config/app/app_preferences.dart';
import '../../../../core/data_state/data_state.dart';
import '../../../../core/dependencies_injection.dart';
import '../../../refresh_token/data/models/refresh_token_model.dart';
import '../../domain/entities/working_hours_entity.dart';

part 'get_working_time_event.dart';
part 'get_working_time_state.dart';
part 'get_working_time_bloc.freezed.dart';

class GetWorkingTimeBloc
    extends Bloc<GetWorkingTimeEvent, GetWorkingTimeState> {
  final RefreshTokenUsecase _refreshTokenUsecase;
  final GetWorkingTimeUseCase _getWorkingTimeUseCase;
  final SetWorkingTimeUseCase _setWorkingTimeUseCase;
  // ignore: unused_field
  final UpdateWorkingTimeUseCase _updateWorkingTimeUseCase;
  GetWorkingTimeBloc(
    this._refreshTokenUsecase,
    this._getWorkingTimeUseCase,
    this._setWorkingTimeUseCase,
    this._updateWorkingTimeUseCase,
  ) : super(GetWorkingTimeState.initial()) {
    on<GetWorkingTimeEventStarted>((event, emit) {
      emit(GetWorkingTimeState.initial());
    });
    on<GetWorkingTimeEventGetWorkingTime>((event, emit) async {
      LoginStateEntity? userInfo = getItInstance<AppPreferences>()
          .getUserInfo();
      emit(GetWorkingTimeState.loading());
      await _refreshTokenUsecase
          .call(
            params: RefreshTokenModel(
              token: userInfo?.access_token,
              refresh_token: userInfo?.refresh_token,
            ),
          )
          .then((onValue) async {
            if (onValue is DataSuccess) {
              await _getWorkingTimeUseCase
                  .call(
                    params: event.profileModel?.copyWith(
                      authToken: onValue?.data?.access_token,
                    ),
                  )
                  .then((getWorkingTimeOnValue) {
                    if (getWorkingTimeOnValue is DataSuccess) {
                      emit(
                        GetWorkingTimeState.loaded(
                          workingHours: getWorkingTimeOnValue?.data,
                        ),
                      );
                    } else if (getWorkingTimeOnValue
                        is UnauthenticatedDataState) {
                      emit(GetWorkingTimeState.unauthorized());
                    } else if (getWorkingTimeOnValue is NOInternetDataState) {
                      emit(GetWorkingTimeState.noInternet());
                    } else {
                      emit(GetWorkingTimeState.error());
                    }
                  });
            } else if (onValue is UnauthenticatedDataState) {
              emit(GetWorkingTimeState.unauthorized());
            } else if (onValue is NOInternetDataState) {
              emit(GetWorkingTimeState.noInternet());
            } else {
              emit(GetWorkingTimeState.error());
            }
          });
    });
    on<GetWorkingTimeEventSetWorkingTime>((event, emit) async {
      emit(GetWorkingTimeState.loading());
      await _refreshTokenUsecase
          .call(
            params: RefreshTokenModel(
              refresh_token: getItInstance<AppPreferences>()
                  .getUserInfo()
                  ?.refresh_token,
            ),
          )
          .then((onValue) async {
            if (onValue is DataSuccess) {
              await _setWorkingTimeUseCase
                  .call(
                    params: event.setWorkingHoursModel?.copyWith(
                      authToken: onValue?.data?.access_token,
                    ),
                  )
                  .then((setWorkingTimeOnValue) {
                    if (setWorkingTimeOnValue is DataSuccess) {
                      emit(GetWorkingTimeState.setSuccessfully());
                    } else if (setWorkingTimeOnValue
                        is UnauthenticatedDataState) {
                      emit(GetWorkingTimeState.unauthorized());
                    } else if (setWorkingTimeOnValue is NOInternetDataState) {
                      emit(GetWorkingTimeState.noInternet());
                    } else {
                      emit(GetWorkingTimeState.setError());
                    }
                  });
            } else if (onValue is UnauthenticatedDataState) {
              emit(GetWorkingTimeState.unauthorized());
            } else if (onValue is NOInternetDataState) {
              emit(GetWorkingTimeState.noInternet());
            } else {
              emit(GetWorkingTimeState.setError());
            }
          });
    });
  }
}
