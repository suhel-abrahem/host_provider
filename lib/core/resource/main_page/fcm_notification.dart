import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:go_router/go_router.dart';
import '/core/resource/custom_widget/snake_bar_widget/snake_bar_widget.dart';

import '../../../config/route/routes_manager.dart';
import '../../../generated/locale_keys.g.dart';

class FcmNotification {
  final FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initialize() async {
    final context = navigatorKey.currentContext;
    // Request permission for iOS
    // await _firebaseMessaging.requestPermission();

    // Handle incoming messages
    if (context != null) {
      try {
        FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
          if (context.mounted) {
            message.data["type"].toString().contains("booking")
                ? context.pushNamed(
                    RoutesName.serviceInfoPage,
                    pathParameters: {
                      "serviceId": message.data["booking_id"].toString(),
                      "isComplete":
                          message.data["type"].toString() == "booking_completed"
                          ? "true"
                          : "false",
                    },
                  )
                : message.data["type"].toString().contains(
                    "support_admin_reply",
                  )
                ? context.pushNamed(
                    RoutesName.ticketPage,
                    pathParameters: {
                      "ticketId": message.data["ticket_id"] ?? "",
                      "canSend": "true",
                    },
                  )
                : context.pushNamed(
                    RoutesName.chatPage,
                    pathParameters: {
                      "bookingNumber": message.data["booking_number"] ?? "",
                      "chatId": message.data["conversationId"] ?? "",
                    },
                  );
          }
        });
      } catch (e) {
        if (context.mounted) {
          showMessage(
            message: LocaleKeys.common_someThingWentWrongWhileShowNotification
                .tr(),
            context: context,
          );
        }
      }
      try {
        RemoteMessage? initialMessage = await FirebaseMessaging.instance
            .getInitialMessage();
        if (initialMessage != null) {
          if (context.mounted) {
            initialMessage.data["type"].toString().contains("booking")
                ? context.pushNamed(
                    RoutesName.serviceInfoPage,
                    pathParameters: {
                      "serviceId": initialMessage.data["booking_id"].toString(),
                      "isComplete":
                          initialMessage.data["type"].toString() ==
                              "booking_completed"
                          ? "true"
                          : "false",
                    },
                  )
                : initialMessage.data["type"].toString().contains(
                    "support_admin_reply",
                  )
                ? context.pushNamed(
                    RoutesName.ticketPage,
                    pathParameters: {
                      "ticketId": initialMessage.data["ticket_id"] ?? "",
                      "canSend": "true",
                    },
                  )
                : context.pushNamed(
                    RoutesName.chatPage,
                    pathParameters: {
                      "bookingNumber":
                          initialMessage.data["booking_number"] ?? "",
                      "chatId": initialMessage.data["conversationId"] ?? "",
                    },
                  );
          }
        }
      } catch (e) {
        if (context.mounted) {
          showMessage(
            message: LocaleKeys.common_someThingWentWrongWhileShowNotification
                .tr(),
            context: context,
          );
        }
      }
    }
  }
}
