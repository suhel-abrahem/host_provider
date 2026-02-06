import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import '../../../../core/constants/api_constant.dart';
import '../../../../core/data_state/data_state.dart';
import '../../../../core/resource/common_service/common_service.dart';
import '../../../../core/resource/connectivity/check_connectivity.dart';
import '../models/login_model.dart';
import '../models/login_state_model.dart';
import '../../domain/entities/login_state_entity.dart';
import '../../domain/repositories/login_repository.dart';

class LoginRepositoryImplements implements LoginRepository {
  final CommonService _commonService;
  final CheckConnectivity _checkConnectivity;
  LoginRepositoryImplements(this._commonService, this._checkConnectivity);
  ConnectivityResult connectivityResult = ConnectivityResult.none;
  @override
  Future<DataState<LoginStateEntity?>?> loginUser({
    required LoginStateModel? loginStateModel,
  }) async {
    await _checkConnectivity.checkConnectivity().then(
      (action) => connectivityResult = action.last,
    );
    if (connectivityResult == ConnectivityResult.none) {
      return Future.value(NOInternetDataState());
    }
    LoginStateEntity? loginStateEntity;
    DataState<LoginStateEntity>? dataState;
    CommonService commonService = CommonService(
      headers: {
        'Content-Type': 'application/json',
        "accept": "application/json",
      },
    );
    print(
      "login model/login: ${loginStateModel?.login}, password: ${loginStateModel?.password}",
    );
    try {
      await commonService
          .post(
            ApiConstant.loginEndpoint,
            data: LoginModel(
              login: loginStateModel?.login,
              password: loginStateModel?.password,
            ).toJson(),
          )
          .then((response) {
            print(
              "Login response: ${response.data?.statusCode}, logindata: ${response.data?.data}",
            );
            if (response is DataSuccess) {
              if (response.data?.statusCode == 200) {
                loginStateEntity = LoginStateEntity.fromJson(
                  response.data?.data,
                );
                dataState = DataSuccess(data: loginStateEntity);
                return dataState;
              } else {
                dataState = OtpRequestedDataState(
                  data: LoginStateEntity(
                    user: {"id": response.data?.data["user_id"]},
                  ),
                );
                return dataState;
              }
            } else if (response is DataFailed) {
              dataState = DataFailed(error: response.error);
              return dataState;
            } else if (response is UnauthenticatedDataState) {
              dataState = UnauthenticatedDataState(error: response.error);
              return dataState;
            } else if (response is TooManyRequestsDataState) {
              dataState = TooManyRequestsDataState(
                error: response.error,
                data: LoginStateEntity(
                  retry_after_seconds: response
                      .data
                      ?.data["retry_after_seconds"]
                      .toString(),
                ),
              );
              return dataState;
            }
          });
      return dataState;
    } catch (e) {
      dataState = DataFailed(error: e.toString());
      return dataState;
    }
  }
}
