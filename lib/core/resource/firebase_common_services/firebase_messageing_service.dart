import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:hosta_provider/config/app/app_preferences.dart';
import 'package:hosta_provider/core/constants/api_constant.dart';

import 'package:hosta_provider/core/data_state/data_state.dart';
import 'package:hosta_provider/core/dependencies_injection.dart';
import 'package:hosta_provider/core/resource/common_service/common_service.dart';
import 'package:hosta_provider/features/login_page/domain/entities/login_state_entity.dart';
import 'package:hosta_provider/features/refresh_token/data/models/refresh_token_model.dart';
import 'package:hosta_provider/features/refresh_token/domain/entities/token_entity.dart';
import 'package:hosta_provider/features/refresh_token/domain/usecases/refresh_token_usecase.dart';

class FirebaseMessagingService {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  Future<DataState<String?>?> getDeviceToken() async {
    try {
      String? token = await _firebaseMessaging.getToken();
      print("Firebase Messaging Token: $token");
      return DataSuccess(data: token);
    } catch (e) {
      return DataFailed(error: e.toString());
    }
  }

  Future<void> deleteDeviceToken() async {
    await _firebaseMessaging.deleteToken();
  }

  Future<DataState<String?>?> setDeviceToken() async {
    DataState<String?>? result;
    try {
      final LoginStateEntity? loginState = getItInstance<AppPreferences>()
          .getUserInfo();

      TokenEntity? tokenFromServer;

      await getItInstance<RefreshTokenUsecase>()
          .call(
            params: RefreshTokenModel(
              token: loginState?.access_token,
              refresh_token: loginState?.refresh_token,
            ),
          )
          .then((value) {
            if (value is DataSuccess) {
              tokenFromServer = value?.data;
            } else {
              result = DataFailed(error: "Unable to refresh token");
              return result;
            }
          });
      CommonService commonService = CommonService(
        headers: {
          "Authorization": "Bearer ${tokenFromServer?.access_token}",
          "Accept": "application/json",
        },
      );
      await getDeviceToken().then((value) async {
        if (value is DataSuccess<String?>) {
          await commonService
              .post(
                ApiConstant.postDeviceTokenEndpoint,
                data: {"device_token": value.data, "device_type": "android"},
              )
              .then((onValue) {
                if (onValue is DataSuccess) {
                  result = DataSuccess(data: value.data);
                  return result;
                } else {
                  result = DataFailed(error: onValue.error);
                  return result;
                }
              });
        } else {
          result = DataFailed(error: "Unable to get device token");
          return result;
        }
      });

      return result;
    } catch (e) {
      result = DataFailed(error: e.toString());
      return result;
    }
  }

  Future<void> notificationPermission() async {
    NotificationSettings settings = await _firebaseMessaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: true,
      criticalAlert: false,
      provisional: true,
      sound: true,
    );
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
    } else {}
  }

  Future<void> RemoveNotificationPermission() async {
    await _firebaseMessaging.requestPermission(
      alert: false,
      announcement: false,
      badge: false,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: false,
    );
  }

  Future<bool> hasPermission() async {
    NotificationSettings settings = await _firebaseMessaging
        .getNotificationSettings();
    return settings.authorizationStatus == AuthorizationStatus.authorized ||
        settings.authorizationStatus == AuthorizationStatus.provisional;
  }
}
