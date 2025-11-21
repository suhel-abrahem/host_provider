import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';

import '../../../../core/constants/api_constant.dart';
import '../../../../core/data_state/data_state.dart';
import '../models/signup_model.dart';
import '../../domain/entities/signup_entity.dart';
import '../../domain/entities/signup_error_entity.dart';
import '../../domain/repositories/signup_repository.dart';

import '../../../../core/resource/common_service/common_service.dart';
import '../../../../core/resource/connectivity/check_connectivity.dart';
import '../../domain/entities/signup_info_entity.dart';

class SignupRepositoryImplements implements SignupRepository {
  final CommonService _commonService;
  final CheckConnectivity _checkConnectivity;

  SignupRepositoryImplements({
    required CommonService commonService,
    required CheckConnectivity checkConnectivity,
  }) : _commonService = commonService,
       _checkConnectivity = checkConnectivity;

  ConnectivityResult connectivityResult = ConnectivityResult.none;

  @override
  Future<DataState<SignupInfoEntity?>?> signup({
    required SignupModel? signupModel,
  }) async {
    await _checkConnectivity.checkConnectivity().then(
      (action) => connectivityResult = action.last,
    );
    if (connectivityResult == ConnectivityResult.none) {
      return Future.value(NOInternetDataState());
    }
    DataState<SignupInfoEntity>? response;
    try {
      await _commonService
          .post(ApiConstant.registerEndpoint, data: signupModel?.toJson())
          .then((onValue) {
            if (onValue is DataSuccess) {
              final signupEntityJson = {
                "message": onValue.data?.data["message"],
                "user_id": onValue.data?.data["user_id"],
                "verify_via": onValue.data?.data["verify_via"],
              };
              final SignupEntity signupEntity = SignupEntity.fromJson(
                signupEntityJson,
              );

              final SignupInfoEntity signupInfoEntity = SignupInfoEntity(
                signupEntity: signupEntity,
              );
              response = DataSuccess(data: signupInfoEntity);
              return response;
            } else {
              final SignupErrorEntity error = SignupErrorEntity.fromJson(
                onValue.data?.data["errors"],
              );
              response = DataError(
                data: SignupInfoEntity(signup_error_entity: error),
                error: jsonEncode(error),
              );
              return response;
            }
          });
    } catch (e) {
      response = DataFailed(error: e.toString());
      return response;
    }
    return response;
  }
}
