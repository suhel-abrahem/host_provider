import 'package:connectivity_plus/connectivity_plus.dart';
import '../../../../core/constants/api_constant.dart';
import '../../../../core/data_state/data_state.dart';

import '../../../login_page/domain/entities/login_state_entity.dart';

import '../models/otp_model.dart';

import '../../../../core/resource/common_service/common_service.dart';
import '../../../../core/resource/connectivity/check_connectivity.dart';
import '../../domain/repositories/otp_verifiy_repository.dart';

class OtpVerifyRepositoryImplements implements OtpVerifyRepository {
  final CommonService _commonService;
  final CheckConnectivity _checkConnectivity;

  OtpVerifyRepositoryImplements({
    required CommonService commonService,
    required CheckConnectivity checkConnectivity,
  }) : _commonService = commonService,
       _checkConnectivity = checkConnectivity;
  @override
  Future<DataState<LoginStateEntity?>?> verify({OtpModel? otpModel}) async {
    ConnectivityResult connectivityResult = ConnectivityResult.none;
    await _checkConnectivity.checkConnectivity().then(
      (action) => connectivityResult = action.last,
    );
    if (connectivityResult == ConnectivityResult.none) {
      return Future.value(NOInternetDataState());
    }
    DataState<LoginStateEntity?>? response;
    try {
      String endpoint = ApiConstant.verifyOtpEndpoint.replaceFirst(
        "{user}",
        "${otpModel?.userId}",
      );
      await _commonService
          .post(endpoint, data: {"otp": otpModel?.otp.toString()})
          .then((onValue) {
            if (onValue is DataSuccess) {
              response = DataSuccess(
                data: LoginStateEntity.fromJson(onValue.data?.data),
              );

              return response;
            } else {
              response = DataError(error: onValue.error);
              return response;
            }
          });
      return response;
    } catch (e) {
      return DataFailed(error: e.toString());
    }
  }

  @override
  Future<DataState<LoginStateEntity?>?> resend({OtpModel? otpModel}) async {
    ConnectivityResult connectivityResult = ConnectivityResult.none;
    await _checkConnectivity.checkConnectivity().then(
      (action) => connectivityResult = action.last,
    );
    if (connectivityResult == ConnectivityResult.none) {
      return Future.value(NOInternetDataState());
    }
    DataState<LoginStateEntity?>? response;
    try {
      String endpoint = ApiConstant.resendOtpEndpoint.replaceFirst(
        "{user}",
        "${otpModel?.userId}",
      );
      await _commonService
          .post(endpoint, data: {"verify_method": otpModel?.verifyMethod})
          .then((onValue) {
            if (onValue is DataSuccess) {
              response = DataSuccess(
                data: LoginStateEntity.fromJson(onValue.data?.data),
              );

              return response;
            } else {
              response = DataError(error: onValue.error);
              return response;
            }
          });
      return response;
    } catch (e) {
      return DataFailed(error: e.toString());
    }
  }
}
