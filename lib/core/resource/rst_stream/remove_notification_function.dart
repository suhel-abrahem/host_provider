// import 'package:flutter/material.dart';

// import '../main_page/main_page.dart';
// import '../main_page/message_notification_widget.dart';
// import '../main_page/notificaion_entity/message_notification_entity.dart';

// void removeNotification(MessageNotificationEntity? item) {
//   final index = notifications.indexOf(item);
//   if (index == -1) return;

//   final removedItem = notifications.removeAt(index);

//   listKey.currentState?.removeItem(
//     index,
//     (context, animation) => SizeTransition(
//       sizeFactor: animation,
//       child: MessageNotificationWidget(
//         message: removedItem?.message,
//         chatId: removedItem?.conversation_id.toString(),
//         bookingNumber: removedItem?.booking_number,
//       ),
//     ),
//     duration: const Duration(milliseconds: 300),
//   );
// }
