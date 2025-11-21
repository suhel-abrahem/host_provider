import 'package:connectivity_plus/connectivity_plus.dart';
import '../../../../core/constants/api_constant.dart';
import '../../../../core/data_state/data_state.dart';
import '../../../../core/resource/common_service/common_service.dart';
import '../../../../core/resource/connectivity/check_connectivity.dart';
import '../models/refresh_token_model.dart';
import '../../domain/entities/token_entity.dart';
import '../../domain/repositories/refresh_token_repository.dart';

import '../../../../config/app/app_preferences.dart';
import '../../../../core/dependencies_injection.dart';
import '../../../login_page/domain/entities/login_state_entity.dart';

class RefreshTokenRepositoryImplements implements RefreshTokenRepository {
  final CommonService _commonService;
  final CheckConnectivity _checkConnectivity;

  RefreshTokenRepositoryImplements({
    required CommonService commonService,
    required CheckConnectivity checkConnectivity,
  }) : _commonService = commonService,
       _checkConnectivity = checkConnectivity;
  @override
  Future<DataState<TokenEntity?>?> get({
    RefreshTokenModel? refreshTokenModel,
  }) async {
    ConnectivityResult? connectivityResult;
    _checkConnectivity.checkConnectivity().then(
      (onValue) => connectivityResult = onValue.last,
    );
    if (connectivityResult == ConnectivityResult.none) {
      return NOInternetDataState();
    }
    LoginStateEntity? userInfo = getItInstance<AppPreferences>().getUserInfo();
    DataState<TokenEntity?>? response;
    String? token;
    DateTime? tokenCreatedAtTime = DateTime.tryParse(
      userInfo?.created_at ?? "",
    );
    Duration? tokenDuration = Duration(milliseconds: userInfo?.expires_in ?? 0);
    DateTime? tokenExpiresTime = tokenCreatedAtTime?.add(tokenDuration);
    if ((tokenCreatedAtTime != null) &&
        (tokenExpiresTime?.isBefore(
              tokenCreatedAtTime.subtract(Duration(seconds: 30)),
            ) ??
            false)) {
      response = DataSuccess(
        data: TokenEntity(
          access_token: token,
          token_type: "bearer",
          expires_in:
              tokenExpiresTime?.difference(tokenCreatedAtTime).inMilliseconds ??
              Duration(milliseconds: 0).inMilliseconds,
        ),
      );

      return response;
    } else {
      try {
        await _commonService
            .post(
              ApiConstant.refreshTokenEndpoint,
              data: {"refresh_token": refreshTokenModel?.refresh_token},
            )
            .then((onValue) {
              if (onValue is DataSuccess) {
                response = DataSuccess(
                  data: TokenEntity.fromJson(onValue.data?.data),
                );
                userInfo = userInfo?.copyWith(
                  access_token: response?.data?.access_token,
                  refresh_token:
                      (response?.data?.refresh_token?.isNotEmpty ?? false)
                      ? response?.data?.refresh_token
                      : userInfo?.refresh_token,
                  created_at: DateTime.now().toIso8601String(),
                );
                getItInstance<AppPreferences>().setUserInfo(
                  loginStateEntity: userInfo,
                );
                return response;
              } else {
                return onValue;
              }
            });
        return response;
      } catch (e) {
        response = DataFailed(error: e.toString());
        return response;
      }
    }
  }
}
