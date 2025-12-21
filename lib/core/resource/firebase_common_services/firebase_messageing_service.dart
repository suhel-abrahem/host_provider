import 'package:firebase_messaging/firebase_messaging.dart';

import '../../constants/language_constant.dart';
import '/config/app/app_preferences.dart';
import '/core/constants/api_constant.dart';

import '/core/data_state/data_state.dart';
import '/core/dependencies_injection.dart';
import '/core/resource/common_service/common_service.dart';
import '/features/login_page/domain/entities/login_state_entity.dart';
import '/features/refresh_token/data/models/refresh_token_model.dart';
import '/features/refresh_token/domain/entities/token_entity.dart';
import '/features/refresh_token/domain/usecases/refresh_token_usecase.dart';

class FirebaseMessagingService {
  FirebaseMessaging get _firebaseMessaging => FirebaseMessaging.instance;

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
        String locale =
            LanguageConstant.languageCodeMap[getItInstance<AppPreferences>()
                    .getLanguage() ??
                LanguageConstant.enName] ??
            "ar";
        if (value is DataSuccess<String?>) {
          print("Locale in setDeviceToken: $locale");
          await commonService
              .post(
                ApiConstant.postDeviceTokenEndpoint,
                data: {
                  "device_token": value.data,
                  "device_type": "android",
                  "locale": locale,
                },
              )
              .then((onValue) {
                print("Device token response: ${onValue.error}");
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
      print("Error in setDeviceToken: $e");
      result = DataFailed(error: e.toString());
      return result;
    }
  }

  Future<DataState<String?>?> updateDeviceLanguage() async {
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
        String locale =
            LanguageConstant.languageCodeMap[getItInstance<AppPreferences>()
                    .getLanguage() ??
                LanguageConstant.enName] ??
            "ar";
        print("Locale in updateDeviceLanguage: $locale");
        if (value is DataSuccess<String?>) {
          await commonService
              .patch(
                ApiConstant.updateDeviceLanguageEndpoint,
                data: {"device_token": value.data, "locale": locale},
              )
              .then((onValue) {
                print("Device token response: ${onValue}");
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
      print("Error in setDeviceToken: $e");
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
