import 'dart:async';

import '/core/resource/main_page/notificaion_entity/message_notification_entity.dart';
import '/core/resource/rst_stream/rst_stream.dart';

class MessageNotificationService {
  static final MessageNotificationService _instance =
      MessageNotificationService._internal();

  factory MessageNotificationService() => _instance;
  MessageNotificationService._internal();

  StreamSubscription<MessageNotificationEntity?>? _sub;

  /// callback injected from UI
  void init({
    required void Function(MessageNotificationEntity? message) onMessage,
  }) {
    if (_sub != null) return; // 🔒 prevent duplicate listeners

    _sub = messageNotificationSocket.stream.listen((message) {
      onMessage(message);
    });
  }

  void dispose() {
    _sub?.cancel();
    _sub = null;
  }
}
