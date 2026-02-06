import 'dart:async';

import 'package:flutter/material.dart';
import '/core/resource/rst_stream/rst_stream.dart';

import '../../../config/route/routes_manager.dart';
import '../main_page/booking_notification_widget.dart';

class NotificationService {
  static final NotificationService _instance = NotificationService._internal();

  factory NotificationService() => _instance;
  NotificationService._internal();

  StreamSubscription? _sub;

  void init() {
    if (_sub != null) return; // 🔒 prevent    listeners

    _sub = notificationStreamSocket.stream.listen((message) {
      final context = navigatorKey.currentContext;

      if (context == null) return;
      if (context.mounted == false) return;
      showDialog(
        context: context,
        barrierDismissible: true,
        builder: (_) => BookingNotificationWidget(message: message),
      );
    });
  }

  void dispose() {
    _sub?.cancel();
    _sub = null;
  }
}
