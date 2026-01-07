import 'dart:io';
import 'package:dio/dio.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../../core/constants/api_constant.dart';
import '../../../../core/data_state/data_state.dart';
import '../../../../core/resource/common_service/common_service.dart';
import '../models/language_model.dart';

import '../models/profile_model.dart';

import '../models/set_time_off_model.dart';

import '../models/set_working_hours_model.dart';
import '../../domain/entities/language_entity.dart';

import '../../domain/entities/profile_entity.dart';

import '../../domain/entities/time_of_entity.dart';

import '../../domain/entities/working_hours_entity.dart';

import '../../../../core/resource/connectivity/check_connectivity.dart';
import '../../domain/repositories/profile_repository.dart';
import '../models/working_time_model.dart';

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
    CommonService commonService = CommonService(
      headers: {
        'Authorization': 'Bearer ${profileModel?.authToken}',
        "Accept-Language": profileModel?.acceptLanguage ?? "ar",
      },
    );
    try {
      await commonService.get(ApiConstant.meEndpoint).then((response) {
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
    CommonService commonService = CommonService(
      headers: {
        'Authorization': 'Bearer ${profileModel?.authToken}',
        "Accept-Language": profileModel?.acceptLanguage ?? "ar",
      },
    );
    try {
      await commonService
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
  Future<DataState<void>?> logout(ProfileModel? profileModel) async {
    await _checkConnectivity.checkConnectivity().then((onValue) {
      if (onValue.last == ConnectivityResult.none) {
        return NOInternetDataState();
      }
    });
    DataState<void>? dataState;
    CommonService commonService = CommonService(
      headers: {
        'Authorization': 'Bearer ${profileModel?.authToken}',
        "Accept-Language": profileModel?.acceptLanguage ?? "ar",
      },
    );
    try {
      await commonService.post(ApiConstant.logoutEndpoint).then((response) {
        if (response is DataSuccess) {
          dataState = DataSuccess<void>(data: null);
          return dataState;
        } else if (response is UnauthenticatedDataState) {
          dataState = UnauthenticatedDataState(
            error:
                response.error ??
                'Something went wrong, please try again later.',
          );
          return dataState;
        } else {
          dataState = DataFailed(
            error:
                response.error ??
                'Something went wrong, please try again later.',
          );
          return dataState;
        }
      });
    } catch (e) {
      dataState = DataFailed(error: e.toString());
      return dataState;
    }
    return dataState;
  }

  @override
  Future<DataState<TimeOfEntity>?> setTimeOff(SetTimeOffModel? timeOfModel) {
    throw UnimplementedError();
  }

  @override
  Future<DataState<List<WorkingHoursEntity?>?>?> setWorkingHours(
    SetWorkingHoursModel? profileModel,
  ) async {
    ConnectivityResult? connectivityResult;
    await _checkConnectivity.checkConnectivity().then((onValue) {
      connectivityResult = onValue.last;
    });
    if (connectivityResult == ConnectivityResult.none) {
      return NOInternetDataState();
    }
    DataState<List<WorkingHoursEntity?>?>? dataState;
    CommonService commonService = CommonService(
      headers: {
        'Authorization': 'Bearer ${profileModel?.authToken}',
        "Accept-Language": profileModel?.acceptLanguage ?? "ar",
      },
    );
    try {
      List<Map<String, dynamic>> workingTimeData = [];
      for (WorkingTimeModel? workingTime in profileModel?.workingTime ?? []) {
        if (workingTime != null) {
          workingTimeData.add({
            "day_of_week": workingTime.day_of_week,
            "is_available": workingTime.is_available,
            "start_time": DateFormat(
              'HH:mm',
            ).format(DateFormat('HH:mm').parse(workingTime.start_time ?? "")),
            "end_time": DateFormat(
              'HH:mm',
            ).format(DateFormat('HH:mm').parse(workingTime.end_time ?? "")),
          });
        }
      }
      final Map<String, dynamic> dataMap = {};

      dataMap['schedule'] = workingTimeData;

      await commonService
          .post("${ApiConstant.workingHoursEndpoint}/bulk", data: dataMap)
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
  Future<DataState<ProfileEntity?>?> updateProfile(
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
    CommonService commonService = CommonService(
      headers: {
        'Authorization': 'Bearer ${profileModel?.authToken}',
        "Accept-Language": profileModel?.acceptLanguage ?? "ar",
      },
    );
    try {
      final Map<String, dynamic> dataMap = {};

      if (profileModel?.profile?.name?.trim().isNotEmpty ?? false) {
        dataMap['name'] = profileModel!.profile!.name!;
      }
      if (profileModel?.profile?.email?.trim().isNotEmpty ?? false) {
        dataMap['email'] = profileModel!.profile!.email!;
      }
      if (profileModel?.profile?.phone?.trim().isNotEmpty ?? false) {
        dataMap['phone'] = profileModel!.profile!.phone!;
      }
      if (profileModel?.profile?.address?.trim().isNotEmpty ?? false) {
        dataMap['address'] = profileModel!.profile!.address!;
      }
      if (profileModel?.profile?.dob?.trim().isNotEmpty ?? false) {
        dataMap['dob'] = profileModel!.profile!.dob!;
      }
      if (profileModel?.profile?.city_id != null) {
        dataMap['city_id'] = profileModel!.profile!.city_id;
      }

      // Add avatar file if exists
      if (profileModel?.profile?.avatar != null) {
        final avatarFile = File(profileModel!.profile!.avatar!.path);
        dataMap['avatar'] = await MultipartFile.fromFile(
          avatarFile.path,
          filename: avatarFile.path.split('/').last,
        );
      }

      // Convert map to FormData
      final formData = FormData.fromMap(dataMap);
      await commonService
          .post(
            ApiConstant.updateProfileEndpoint,
            data: formData,
            options: Options(contentType: 'multipart/form-data'),
          )
          .then((response) {
            if (response is DataSuccess) {
              dataState = DataSuccess<ProfileEntity?>(
                data: ProfileEntity.fromJson(response.data?.data["data"]),
              );
              return dataState;
            } else if (response is UnauthenticatedDataState) {
              dataState = UnauthenticatedDataState(
                error:
                    response.error ??
                    'Something went wrong, please try again later.',
              );
              return dataState;
            } else {
              dataState = DataFailed(
                error:
                    response.error ??
                    'Something went wrong, please try again later.',
              );
              return dataState;
            }
          });
    } catch (e) {
      dataState = DataFailed(error: e.toString());
      return dataState;
    }
    return dataState;
  }

  @override
  Future<DataState<List<WorkingHoursEntity?>?>?> updateWorkingHours(
    SetWorkingHoursModel? profileModel,
  ) {
    // TODO: implement updateWorkingHours
    throw UnimplementedError();
  }

  @override
  Future<DataState<List<LanguageEntity?>?>?> getLanguages(
    LanguageModel? profileModel,
  ) async {
    ConnectivityResult? connectivityResult;
    await _checkConnectivity.checkConnectivity().then((onValue) {
      connectivityResult = onValue.last;
    });
    if (connectivityResult == ConnectivityResult.none) {
      return NOInternetDataState();
    }
    DataState<List<LanguageEntity?>?>? dataState;
    CommonService commonService = CommonService(
      headers: {'Authorization': 'Bearer ${profileModel?.auth}'},
    );
    try {
      await commonService.get(ApiConstant.getLanguagesEndpoint).then((
        response,
      ) {
        if (response is DataSuccess) {
          List<LanguageEntity?> languages = [];
          for (var item in response.data?.data["data"]) {
            languages.add(LanguageEntity.fromJson(item));
          }
          dataState = DataSuccess<List<LanguageEntity?>?>(data: languages);
          return dataState;
        } else if (response is UnauthenticatedDataState) {
          dataState = UnauthenticatedDataState(
            error:
                response.error ??
                'Something went wrong, please try again later.',
          );
          return dataState;
        } else {
          dataState = DataFailed(
            error:
                response.error ??
                'Something went wrong, please try again later.',
          );
          return dataState;
        }
      });
    } catch (e) {
      dataState = DataFailed(error: e.toString());
      return dataState;
    }
    return dataState;
  }

  @override
  Future<DataState<List<LanguageEntity?>?>?> updateLanguage(
    LanguageModel? profileModel,
  ) async {
    ConnectivityResult? connectivityResult;
    await _checkConnectivity.checkConnectivity().then((onValue) {
      connectivityResult = onValue.last;
    });
    if (connectivityResult == ConnectivityResult.none) {
      return NOInternetDataState();
    }
    DataState<List<LanguageEntity?>?>? dataState;
    CommonService commonService = CommonService(
      headers: {
        'Authorization': 'Bearer ${profileModel?.auth}',
        "Accept-Language": profileModel?.acceptLanguage ?? "ar",
      },
    );
    try {
      await commonService
          .post(
            ApiConstant.setLanguagesEndpoint,
            data: {"languages": profileModel?.languages},
          )
          .then((response) {
            if (response is DataSuccess) {
              List<LanguageEntity?> languages = [];
              for (var item in response.data?.data["data"]) {
                languages.add(LanguageEntity.fromJson(item));
              }
              dataState = DataSuccess<List<LanguageEntity?>?>(data: languages);
              return dataState;
            } else if (response is UnauthenticatedDataState) {
              dataState = UnauthenticatedDataState(
                error:
                    response.error ??
                    'Something went wrong, please try again later.',
              );
              return dataState;
            } else {
              dataState = DataFailed(
                error:
                    response.error ??
                    'Something went wrong, please try again later.',
              );
              return dataState;
            }
          });
    } catch (e) {
      dataState = DataFailed(error: e.toString());
      return dataState;
    }
    return dataState;
  }

  @override
  Future<DataState<DataState<void>?>?> deleteAccount(
    ProfileModel? profileModel,
  ) async {
    ConnectivityResult? connectivityResult;
    await _checkConnectivity.checkConnectivity().then((onValue) {
      connectivityResult = onValue.last;
    });
    if (connectivityResult == ConnectivityResult.none) {
      return NOInternetDataState();
    }
    DataState<DataState<void>?>? dataState;
    CommonService commonService = CommonService(
      headers: {
        'Authorization': 'Bearer ${profileModel?.authToken}',
        "Content_type": "application/json",
      },
    );
    print('Deleting account for user password: ${profileModel?.password}');
    try {
      await commonService
          .delete(
            ApiConstant.deleteAccountEndpoint,
            params: {
              "confirmation": "DELETE",
              "password": profileModel?.password,
            },
          )
          .then((response) {
            print('Delete account response: $response');
            if (response is DataSuccess) {
              dataState = DataSuccess<DataState<void>?>(data: null);
              return dataState;
            } else if (response is UnauthenticatedDataState) {
              dataState = UnauthenticatedDataState(
                error:
                    response.error ??
                    'Something went wrong, please try again later.',
              );
              return dataState;
            } else {
              dataState = DataFailed(
                error:
                    response.error ??
                    'Something went wrong, please try again later.',
              );
              return dataState;
            }
          });
    } catch (e) {
      dataState = DataFailed(error: e.toString());
      return dataState;
    }
    return dataState;
  }
}
