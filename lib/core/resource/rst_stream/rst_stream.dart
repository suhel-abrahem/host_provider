import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import '/core/resource/main_page/notificaion_entity/message_from_websocet_entity.dart';
import '/features/chat/domain/entities/message/message_entity.dart';
import '/features/notification_page/domain/entities/notification_entity.dart';

import '../main_page/notificaion_entity/message_notification_entity.dart';

class StreamSocket<T> {
  final _controller = StreamController<T>.broadcast();

  void addResponse(T data) {
    if (!_controller.isClosed) {
      _controller.sink.add(data);
    }
  }

  Stream<T> get stream => _controller.stream;

  void dispose() {
    _controller.close();
  }
}

// Create a global instance
final unreadedNotificationStreamSocket = StreamSocket<dynamic>();
final chatUnReadCountStreamSocket = StreamSocket<int>();
final chatMessageStreamSocket = StreamSocket<MessageFromWebSocketEntity?>();
final ticketMessageStreamSocket = StreamSocket<MessageFromWebSocketEntity?>();
final notificationStreamSocket = StreamSocket<NotificationEntity?>();
final messageNotificationSocket = StreamSocket<MessageNotificationEntity?>();
