import '/features/chat/domain/entities/message/message_entity.dart';

import '../../../features/notification_page/domain/entities/notification_entity.dart';
import '../../../main.dart';
import '../main_page/notificaion_entity/message_from_websocet_entity.dart';
import '../main_page/notificaion_entity/message_notification_entity.dart';
import '../rst_stream/rst_stream.dart';

bool _homeSocketInitialized = false;

void initHomeAndChatSocketListeners() {
  if (_homeSocketInitialized) return;

  socketService.on(
    event: "notification:unread_count",
    callback: (data) {
      unreadedNotificationStreamSocket.addResponse(
        data["unread_count"].toString(),
      );
    },
  );

  socketService.on(
    event: "notification:new",
    callback: (data) {
      unreadedNotificationStreamSocket.addResponse(
        data["unread_count"].toString(),
      );

      notificationStreamSocket.addResponse(
        NotificationEntity.fromJson(data["notification"]),
      );
    },
  );

  socketService.on(
    event: "chat:unread_messages",
    callback: (data) {
      chatUnReadCountStreamSocket.addResponse(data["unread_count"]);
    },
  );

  socketService.on(
    event: "chat:new_message",
    callback: (data) {
      // chatUnReadCountStreamSocket.addResponse(data["unread_count"]);
      print(
        'New chat message data: ${MessageEntity.fromJson(data["message"]).copyWith(me: false)}',
      );
      chatMessageStreamSocket.addResponse(
        MessageFromWebSocketEntity(
          message: MessageEntity.fromJson(data["message"]).copyWith(me: false),
          booking_number: data["booking_number"],
          conversation_id: data["conversation_id"],
        ),
      );
      messageNotificationSocket.addResponse(
        MessageNotificationEntity(
          conversation_id: data["conversation_id"],
          booking_number: data["booking_number"] ?? "",
          message: MessageEntity.fromJson(data["message"]).copyWith(me: false),
        ),
      );
      chatUnReadCountStreamSocket.addResponse(data["unread_count"]);
    },
  );
  socketService.on(
    event: "support:admin_reply",
    callback: (data) {
      print("Support messages read data: $data");
      messageNotificationSocket.addResponse(
        MessageNotificationEntity(
          conversation_id: data["ticket_id"],
          booking_number: data["ticket_number"] ?? "",
          message: MessageEntity(
            content: data["content"],
            message_type: data["message_type"],
            me: false,
          ),
        ),
      );
      ticketMessageStreamSocket.addResponse(
        MessageFromWebSocketEntity(
          message: MessageEntity(
            content: data["content"],
            message_type: data["message_type"],
            me: false,
          ),
          booking_number: data["ticket_number"],
          conversation_id: data["ticket_id"],
        ),
      );
    },
  );

  _homeSocketInitialized = true;
}
