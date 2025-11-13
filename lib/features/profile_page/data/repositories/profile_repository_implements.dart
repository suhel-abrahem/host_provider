import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:hosta_provider/core/constants/api_constant.dart';
import 'package:hosta_provider/core/data_state/data_state.dart';
import 'package:hosta_provider/core/resource/common_service/common_service.dart';

import 'package:hosta_provider/features/profile_page/data/models/profile_model.dart';

import 'package:hosta_provider/features/profile_page/data/models/set_time_off_model.dart';

import 'package:hosta_provider/features/profile_page/data/models/set_working_hours_model.dart';

import 'package:hosta_provider/features/profile_page/domain/entities/profile_entity.dart';

import 'package:hosta_provider/features/profile_page/domain/entities/time_of_entity.dart';

import 'package:hosta_provider/features/profile_page/domain/entities/working_hours_entity.dart';

import '../../../../core/resource/connectivity/check_connectivity.dart';
import '../../domain/repositories/profile_repository.dart';

class ProfileRepositoryImplements implements ProfileRepository {
  final CheckConnectivity _checkConnectivity;
  ProfileRepositoryImplements(this._checkConnectivity);
  @override
  Future<DataState<ProfileEntity?>?> getProfile(
    ProfileModel? profileModel,
  ) async {
    ConnectivityResult? connectivityResult;
    await _checkConnectivity.checkConnectivity().then((onValue) {
      connectivityResult = onValue.last;
    });
    if (connectivityResult == ConnectivityResult.none) {
      return NOInternetDataState();
    }
    DataState<ProfileEntity?>? dataState;
    CommonService _commonService = CommonService(
      headers: {
        'Authorization': 'Bearer ${profileModel?.authToken}',
        "Accept-Language": profileModel?.acceptLanguage ?? "ar",
      },
    );
    try {
      await _commonService.get(ApiConstant.meEndpoint).then((response) {
        if (response is DataSuccess) {
          dataState = DataSuccess<ProfileEntity?>(
            data: ProfileEntity.fromJson(response.data?.data["data"]),
          );
        } else if (response is UnauthenticatedDataState) {
          dataState = UnauthenticatedDataState(
            error:
                response.error ??
                'Something went wrong, please try again later.',
          );
        } else {
          dataState = DataFailed(
            error:
                response.error ??
                'Something went wrong, please try again later.',
          );
        }
      });
    } catch (e) {
      dataState = DataFailed(error: e.toString());
    }
    return dataState;
  }

  @override
  Future<DataState<List<TimeOfEntity?>?>?> getTimeOff(
    ProfileModel? profileModel,
  ) {
    // TODO: implement getTimeOff
    throw UnimplementedError();
  }

  @override
  Future<DataState<List<WorkingHoursEntity?>?>?> getWorkingHours(
    ProfileModel? profileModel,
  ) async {
    ConnectivityResult? connectivityResult;
    await _checkConnectivity.checkConnectivity().then((onValue) {
      connectivityResult = onValue.last;
    });
    if (connectivityResult == ConnectivityResult.none) {
      return NOInternetDataState();
    }
    DataState<List<WorkingHoursEntity?>?>? dataState;
    CommonService _commonService = CommonService(
      headers: {
        'Authorization': 'Bearer ${profileModel?.authToken}',
        "Accept-Language": profileModel?.acceptLanguage ?? "ar",
      },
    );
    try {
      await _commonService
          .get("${ApiConstant.workingHoursEndpoint}/${profileModel?.id}")
          .then((response) {
            if (response is DataSuccess) {
              List<WorkingHoursEntity?> workingHours = [];
              for (var item in response.data?.data["data"]) {
                workingHours.add(WorkingHoursEntity.fromJson(item));
              }
              dataState = DataSuccess<List<WorkingHoursEntity?>?>(
                data: workingHours,
              );
            } else if (response is UnauthenticatedDataState) {
              dataState = UnauthenticatedDataState(
                error:
                    response.error ??
                    'Something went wrong, please try again later.',
              );
            } else {
              dataState = DataFailed(
                error:
                    response.error ??
                    'Something went wrong, please try again later.',
              );
            }
          });
    } catch (e) {
      dataState = DataFailed(error: e.toString());
    }
    return dataState;
  }

  @override
  Future<DataState<void>?> logout(ProfileModel? profileModel) {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<DataState<TimeOfEntity>?> setTimeOff(SetTimeOffModel? timeOfModel) {
    // TODO: implement setTimeOff
    throw UnimplementedError();
  }

  @override
  Future<DataState<WorkingHoursEntity?>?> setWorkingHours(
    SetWorkingHoursModel? profileModel,
  ) {
    // TODO: implement setWorkingHours
    throw UnimplementedError();
  }

  @override
  Future<DataState<ProfileEntity?>?> updateProfile(ProfileModel? profileModel) {
    // TODO: implement updateProfile
    throw UnimplementedError();
  }

  @override
  Future<DataState<WorkingHoursEntity?>?> updateWorkingHours(
    SetWorkingHoursModel? profileModel,
  ) {
    // TODO: implement updateWorkingHours
    throw UnimplementedError();
  }
}
