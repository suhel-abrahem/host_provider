import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import '/features/chat/domain/entities/message/message_entity.dart';

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
final notificationStreamSocket = StreamSocket<dynamic>();
final chatUnReadCountStreamSocket = StreamSocket<int>();
final chatMessageStreamSocket = StreamSocket<MessageEntity?>();
final fcmNotificationStreamSocket = StreamSocket<RemoteMessage?>();
String? lastNotificationCount;
String? lastChatUnReadCount;
