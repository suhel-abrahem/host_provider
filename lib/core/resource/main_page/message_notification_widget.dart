import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '/config/theme/app_theme.dart';
import '/core/resource/image_widget.dart';
import '/features/chat/domain/entities/message/message_entity.dart';

import '/generated/locale_keys.g.dart';

import '../../../config/route/routes_manager.dart';

import '../../constants/font_constants.dart';

class MessageNotificationWidget extends StatefulWidget {
  final String? chatId;
  final String? bookingNumber;
  final String? senderImage;
  final bool? isAdmin;
  final MessageEntity? message;
  final ValueChanged<double?>? onDragUpdate;
  final ValueChanged<void>? onRemove;

  const MessageNotificationWidget({
    super.key,
    this.bookingNumber,
    this.senderImage,
    this.chatId,
    this.message,
    this.onDragUpdate,
    this.onRemove,
    this.isAdmin = false,
  });

  @override
  State<MessageNotificationWidget> createState() =>
      _MessageNotificationWidgetState();
}

class _MessageNotificationWidgetState extends State<MessageNotificationWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        key: ValueKey(widget.message?.id),

        onHorizontalDragEnd: (_) => widget.onRemove?.call(null),
        child: InkWell(
          onTap: () {
            widget.isAdmin == false
                ? context.pushNamed(
                    RoutesName.chatPage,
                    pathParameters: {
                      "chatId": widget.chatId ?? "",
                      "bookingNumber": widget.bookingNumber ?? "",
                    },
                  )
                : context.pushNamed(
                    RoutesName.ticketPage,
                    pathParameters: {
                      "ticketId": widget.chatId ?? "",
                      "bookingNumber": widget.bookingNumber ?? "",
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (widget.senderImage?.isNotEmpty ?? false)
                  Container(
                    margin: EdgeInsetsDirectional.only(end: 12.w),
                    clipBehavior: Clip.hardEdge,
                    height: 60.h,
                    width: 60.w,
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: ImageWidget(
                      imageUrl: widget.senderImage ?? '',
                      boxFit: BoxFit.cover,
                    ),
                  ),
                SizedBox(
                  width: 240.w,
                  child: Text(
                    widget.isAdmin == true
                        ? widget.message?.message_type == 'text'
                              ? "${LocaleKeys.chatsPage_adminReply.tr()}: ${widget.message?.content?.firstOrNull ?? ""}"
                              : "${LocaleKeys.chatsPage_adminReply.tr()}: ${LocaleKeys.chatsPage_sentAImage.tr()}"
                        : widget.message?.message_type == 'text'
                        ? "${widget.message?.sender_name}: ${widget.message?.content?.firstOrNull ?? ""}"
                        : "${widget.message?.sender_name}: ${LocaleKeys.chatsPage_sentAImage.tr()}",
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      fontFamily: FontConstants.fontFamily(context.locale),
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
