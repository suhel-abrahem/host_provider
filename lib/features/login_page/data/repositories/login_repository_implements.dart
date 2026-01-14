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
    try {
      await _commonService
          .post(
            ApiConstant.loginEndpoint,
            data: LoginModel(
              login: loginStateModel?.login,
              password: loginStateModel?.password,
            ).toJson(),
          )
          .then((response) {
            if (response is DataSuccess<Response?>) {
              if (response.data?.statusCode == 200) {
                loginStateEntity = LoginStateEntity.fromJson(
                  response.data?.data,
                );
                dataState = DataSuccess(data: loginStateEntity);
                return dataState;
              } else {
                dataState = OtpRequestedDataState();
                return dataState;
              }
            } else if (response is DataFailed) {
              dataState = DataFailed(error: response.error);
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
