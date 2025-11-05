import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:hosta_provider/core/constants/api_constant.dart';
import 'package:hosta_provider/core/data_state/data_state.dart';
import 'package:hosta_provider/core/resource/common_service/common_service.dart';
import 'package:hosta_provider/core/resource/connectivity/check_connectivity.dart';
import 'package:hosta_provider/features/refresh_token/data/models/refresh_token_model.dart';
import 'package:hosta_provider/features/refresh_token/domain/entities/token_entity.dart';
import 'package:hosta_provider/features/refresh_token/domain/repositories/refresh_token_repository.dart';

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
    return response;
  }
}
