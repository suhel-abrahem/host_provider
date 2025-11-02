import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:hosta_provider/core/constants/api_constant.dart';
import 'package:hosta_provider/core/data_state/data_state.dart';
import 'package:hosta_provider/features/signup_page/data/models/signup_model.dart';
import 'package:hosta_provider/features/signup_page/domain/entities/signup_entity.dart';
import 'package:hosta_provider/features/signup_page/domain/repositories/signup_repository.dart';

import '../../../../core/resource/common_service/common_service.dart';
import '../../../../core/resource/connectivity/check_connectivity.dart';

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
  Future<DataState<SignupEntity?>?> signup({
    required SignupModel? signupModel,
  }) async {
    await _checkConnectivity.checkConnectivity().then(
      (action) => connectivityResult = action.last,
    );
    if (connectivityResult == ConnectivityResult.none) {
      return Future.value(NOInternetDataState());
    }
    DataState<SignupEntity>? res;
    try {
      print("from repo model:${signupModel?.toJson()}");

      await _commonService
          .post(ApiConstant.registerEndpoint, data: signupModel?.toJson())
          .then((onValue) {
            print("from repo onValue:${onValue.data?.data}");
            if (onValue is DataSuccess<Response>) {
              res = onValue.data?.data;
              return res;
            } else {
              res = DataError(error: onValue.error);
              return res;
            }
          });
    } catch (e) {
      res = DataError(error: e.toString());
      return res;
    }
    return res;
  }
}
