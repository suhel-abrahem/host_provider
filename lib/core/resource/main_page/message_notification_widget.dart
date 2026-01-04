import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '/config/theme/app_theme.dart';
import '/core/resource/image_widget.dart';

import '../../../config/route/routes_manager.dart';
import '../../constants/font_constants.dart';

class MessageNotificationWidget extends StatefulWidget {
  final RemoteMessage? message;
  final ValueChanged<double?>? onDragUpdate;
  final ValueChanged<void>? onRemove;

  const MessageNotificationWidget({
    super.key,
    this.message,
    this.onDragUpdate,
    this.onRemove,
  });

  @override
  State<MessageNotificationWidget> createState() =>
      _MessageNotificationWidgetState();
}

class _MessageNotificationWidgetState extends State<MessageNotificationWidget> {
  Future<void> removeAfterDelay() async {
    await Future.delayed(const Duration(seconds: 4));
    if (widget.onRemove != null) {
      widget.onRemove!(null);
    }
  }

  @override
  void initState() {
    removeAfterDelay();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Dismissible(
        key: ValueKey(widget.message?.messageId ?? UniqueKey()),
        direction: DismissDirection.startToEnd,
        onDismissed: (direction) {
          if (widget.onRemove != null) {
            widget.onRemove!(null);
          }
        },
        child: InkWell(
          onTap: () {
            context.pushNamed(
              RoutesName.chatPage,
              pathParameters: {
                "chatId": widget.message?.data["conversationId"] ?? "",
                "bookingNumber": widget.message?.data["bookingId"] ?? "",
              },
            );
          },
          child: Container(
            width: 340.w,
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(12.r),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).shadowColor,
                  blurRadius: 8.r,
                  offset: Offset(0, 4.h),
                ),
              ],
              border: Border.fromBorderSide(
                Theme.of(context).defaultBorderSide.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (widget.message?.data["sender_image"].isNotEmpty)
                  Container(
                    clipBehavior: Clip.hardEdge,
                    height: 60.h,
                    width: 60.w,
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: ImageWidget(
                      imageUrl: widget.message?.data["sender_image"],
                      boxFit: BoxFit.cover,
                    ),
                  ),
                Text(
                  widget.message?.notification?.body ?? '',
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    fontFamily: FontConstants.fontFamily(context.locale),
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
