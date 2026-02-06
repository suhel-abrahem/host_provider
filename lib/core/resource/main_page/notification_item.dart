import 'package:flutter/material.dart';

import 'notificaion_entity/message_notification_entity.dart';

class NotificationItem {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  final List<MessageNotificationEntity> notifications;

  NotificationItem(this.notifications);
}
