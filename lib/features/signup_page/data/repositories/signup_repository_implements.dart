import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';

import 'package:hosta_provider/core/constants/api_constant.dart';
import 'package:hosta_provider/core/data_state/data_state.dart';
import 'package:hosta_provider/features/signup_page/data/models/signup_model.dart';
import 'package:hosta_provider/features/signup_page/domain/entities/otp_entity.dart';
import 'package:hosta_provider/features/signup_page/domain/entities/signup_entity.dart';
import 'package:hosta_provider/features/signup_page/domain/entities/signup_error_entity.dart';
import 'package:hosta_provider/features/signup_page/domain/repositories/signup_repository.dart';

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
      print("from repo model:${signupModel?.toJson()}");

      await _commonService
          .post(ApiConstant.registerEndpoint, data: signupModel?.toJson())
          .then((onValue) {
            print("from repo onValue:${onValue.data?.data}");
            if (onValue is DataSuccess) {
              final signupEntityJson = {
                "message": onValue.data?.data["message"],
                "user_id": onValue.data?.data["user_id"],
                "verify_via": onValue.data?.data["verify_via"],
              };
              print(" json$signupEntityJson");
              final SignupEntity signupEntity = SignupEntity.fromJson(
                signupEntityJson,
              );
              print(" en$signupEntity");
              final OtpEntity otpEntity = OtpEntity.fromJson(
                onValue.data?.data["otp"],
              );
              print("otp en$otpEntity");
              final SignupInfoEntity signupInfoEntity = SignupInfoEntity(
                signupEntity: signupEntity,
                otpEntity: otpEntity,
              );
              print("all en$signupInfoEntity");
              response = DataSuccess(data: signupInfoEntity);
              return response;
            } else {
              print("fuc:${onValue.error}");
              final SignupErrorEntity error = SignupErrorEntity.fromJson(
                onValue.data?.data["errors"],
              );
              print("fuc:$error");
              response = DataError(
                data: SignupInfoEntity(signup_error_entity: error),
                error: jsonEncode(error),
              );
              return response;
            }
          });
    } catch (e) {
      print("catch baby");
      response = DataFailed(error: e.toString());
      return response;
    }
    return response;
  }
}
