import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hosta_provider/core/data_state/data_state.dart';
import 'package:hosta_provider/core/resource/common_service/common_service.dart';
import 'package:hosta_provider/core/resource/firebase_common_services/firebase_messageing_service.dart';
import 'package:hosta_provider/features/login_page/domain/entities/login_state_entity.dart';
import 'package:hosta_provider/features/refresh_token/data/models/refresh_token_model.dart';
import 'package:hosta_provider/features/refresh_token/domain/usecases/refresh_token_usecase.dart';
import 'config/app/app.dart';
import 'config/app/app_preferences.dart';
import 'core/constants/language_constant.dart';
import 'core/dependencies_injection.dart';
import 'core/resource/rst_stream/rst_stream.dart';
import 'core/util/helper/helper.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  await Firebase.initializeApp();

  print("Handling a background message: ${message.messageId}");
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  await Firebase.initializeApp();
  await initDependencies();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarIconBrightness:
          (getItInstance<AppPreferences>().getAppTheme() ?? false)
          ? Brightness.dark
          : Brightness.light,
      statusBarIconBrightness:
          (getItInstance<AppPreferences>().getAppTheme() ?? false)
          ? Brightness.dark
          : Brightness.light,
    ),
  );
  getItInstance<FirebaseMessagingService>().notificationPermission();

  getItInstance<FirebaseMessagingService>().getDeviceToken();

  runApp(
    EasyLocalization(
      supportedLocales: LanguageConstant.supportedLocales,
      path: LanguageConstant.path,
      saveLocale: true,
      startLocale: Helper.getLocaleByCode(
        getItInstance<AppPreferences>().getLanguage() ?? LanguageConstant.en,
      ),
      fallbackLocale: LanguageConstant.arLoacle,
      child: HostaProvider(),
    ),
  );
}
