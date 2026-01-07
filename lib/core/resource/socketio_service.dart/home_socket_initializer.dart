import '/features/chat/domain/entities/message/message_entity.dart';

import '../../../main.dart';
import '../rst_stream/rst_stream.dart';

bool _homeSocketInitialized = false;

void initHomeAndChatSocketListeners() {
  if (_homeSocketInitialized) return;

  socketService.on(
    event: "notification:unread_count",
    callback: (data) {
      notificationStreamSocket.addResponse(data["unread_count"].toString());
      lastNotificationCount = data["unread_count"].toString();
    },
  );

  socketService.on(
    event: "notification:new",
    callback: (data) {
      notificationStreamSocket.addResponse(data["unread_count"].toString());
      lastNotificationCount = data["unread_count"].toString();
    },
  );

  socketService.on(
    event: "chat:unread_messages",
    callback: (data) {
      chatUnReadCountStreamSocket.addResponse(data["unread_count"]);
      lastChatUnReadCount = data["unread_count"].toString();
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
        MessageEntity.fromJson(data["message"]).copyWith(me: false),
      );
      lastChatUnReadCount = data["unread_count"].toString();
    },
  );

  _homeSocketInitialized = true;
}
