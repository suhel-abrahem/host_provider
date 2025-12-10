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

Future<int> getUnreadCount() async {
  try {
    LoginStateEntity? loginState = await getItInstance<AppPreferences>()
        .getUserInfo();
    int count = 0;
    await getItInstance<RefreshTokenUsecase>()
        .call(
          params: RefreshTokenModel(
            token: loginState?.access_token ?? "",
            refresh_token: loginState?.refresh_token ?? "",
          ),
        )
        .then((refreshTokenOnValue) async {
          if (refreshTokenOnValue is DataSuccess) {
            CommonService commonService = CommonService(
              headers: {
                "Authorization":
                    "Bearer ${refreshTokenOnValue?.data?.access_token}",
              },
            );
            await commonService.get('/notifications/unread-count').then((
              onValue,
            ) {
              if (onValue is DataSuccess) {
                count = onValue.data?.data?['unread_count'] ?? 0;

                return count;
              } else {
                count = 0;
                return count;
              }
            });
          } else if (refreshTokenOnValue is UnauthenticatedDataState) {
            getItInstance<AppPreferences>().setUserInfo(
              loginStateEntity: LoginStateEntity(),
            );
          } else {
            count = 0;
            return count;
          }
        });

    return count;
  } catch (e) {
    print("❌ Error fetching unread count: $e");
    return 0;
  }
}

IO.Socket? socket;
void connectAndListen() {
  socket = IO.io(
    'https://hosta-api.lenda-agency.com',
    IO.OptionBuilder()
        .setPath('/socket.io/')
        .setTransports(['websocket'])
        .enableForceNew()
        .enableReconnection()
        .setExtraHeaders({'Connection': 'upgrade', 'Upgrade': 'websocket'})
        .enableAutoConnect()
        .build(),
  );

  socket?.connect();

  // Connection status
  socket?.onConnect((_) {
    print('✅ Connected to Socket.IO');

    socket?.emit('authenticate', {
      'userId': "5",
      'token':
          "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2hvc3RhLWFwaS5sZW5kYS1hZ2VuY3kuY29tL2FwaS9sb2dpbiIsImlhdCI6MTc2NTI0NTExOSwiZXhwIjoxNzY1MjQ4NzE5LCJuYmYiOjE3NjUyNDUxMTksImp0aSI6Im5sN2lmdEtDbFNNUDZoYnYiLCJzdWIiOiI1IiwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyIsInJvbGVfaWQiOjMsInJvbGVfbmFtZSI6IlByb3ZpZGVyIn0.sM5hxv7U7wNJynQ0Hx6ERDBcjTLXlrMGKVM6D2zylJA",
    });
  });

  socket?.onConnectError((error) {
    print('⛔ connect_error: $error');
  });

  socket?.onError((error) {
    print('⛔ error: $error');
  });

  socket?.onDisconnect((_) {
    print('❌ disconnected from socket');
  });

  // 🔍 Log EVERY event received from the server
  socket?.onAny((event, data) {
    print('📡 onAny → event: $event | data: $data');
  });

  // Your specific event listener
  socket?.on('notification:new', (data) async {
    print("🔔 New Notification: $data");

    int count = await getUnreadCount();

    streamSocket.addResponse(count.toString());
  });
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
  connectAndListen();
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
