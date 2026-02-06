import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '/config/route/routes_manager.dart';

import '/core/constants/font_constants.dart';
import '/core/resource/image_widget.dart';

import '/features/chat/domain/entities/message/message_entity.dart';
import '/features/chat/domain/entities/other_participant/other_participant_entity.dart';

import '../../../../generated/locale_keys.g.dart';

class ConversionWidget extends StatelessWidget {
  final MessageEntity? messageEntity;
  final String? bookingNumber;
  final OtherParticipantEntity? otherParticipantEntity;
  final int? chatId;
  final int? unreadCount;
  final String? ticketImage;
  final bool? isTicket;
  final bool? canSend;
  const ConversionWidget({
    super.key,
    this.messageEntity,
    this.bookingNumber,
    this.otherParticipantEntity,
    this.unreadCount,
    this.chatId,
    this.ticketImage,
    this.isTicket,
    this.canSend,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        if (isTicket == true)
          {
            context.pushNamed(
              RoutesName.ticketPage,
              pathParameters: {
                'ticketId': chatId.toString(),
                "bookingNumber": bookingNumber.toString(),
                "canSend": (canSend == true) ? "true" : "false",
              },
            ),
          }
        else
          context.pushNamed(
            RoutesName.chatPage,
            pathParameters: {
              'bookingNumber': bookingNumber.toString(),
              'chatId': chatId.toString(),
            },
          ),
      },
      child: Container(
        decoration: BoxDecoration(
          color: messageEntity?.is_read == false
              ? Theme.of(context).primaryColor.withValues(alpha: 0.3)
              : Theme.of(context).scaffoldBackgroundColor,
        ),
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only(end: 12.w),
              child: Container(
                width: 40.w,
                height: 40.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Theme.of(context).colorScheme.primary,
                    width: 2.w,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: ImageWidget(
                    imageUrl:
                        ticketImage ??
                        otherParticipantEntity?.profile_image ??
                        "",
                    boxFit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            SizedBox(
              width: 270.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bookingNumber ?? "",
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontFamily: FontConstants.fontFamily(context.locale),
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: [
                      Text(
                        (messageEntity?.me ?? false)
                            ? "${LocaleKeys.chatsPage_you.tr()}: "
                            : "${otherParticipantEntity?.name ?? ""}: ",
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          fontFamily: FontConstants.fontFamily(context.locale),
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      if (messageEntity?.message_type == "image")
                        Text(
                          "${LocaleKeys.chatsPage_sentAImage.tr()}. 📷",
                          style: Theme.of(context).textTheme.labelSmall
                              ?.copyWith(
                                fontFamily: FontConstants.fontFamily(
                                  context.locale,
                                ),
                              ),
                          overflow: TextOverflow.ellipsis,
                        )
                      else
                        SizedBox(
                          width: 200.w,
                          child: Text(
                            messageEntity?.content != null &&
                                    messageEntity!.content!.isNotEmpty
                                ? messageEntity?.content?.last ??
                                      LocaleKeys.chatsPage_noMesagesYet.tr()
                                : LocaleKeys.chatsPage_noMesagesYet.tr(),
                            style: Theme.of(context).textTheme.labelSmall
                                ?.copyWith(
                                  fontFamily: FontConstants.fontFamily(
                                    context.locale,
                                  ),
                                  fontWeight: messageEntity?.is_read == false
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
            Visibility(
              visible: unreadCount != null && unreadCount! > 0,
              child: Container(
                constraints: BoxConstraints(
                  minWidth: 24.w,
                  minHeight: 24.h,
                  maxHeight: 30.h,
                  maxWidth: 30.w,
                ),
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).colorScheme.primary,
                ),

                child: Center(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      unreadCount != null && unreadCount! > 0
                          ? unreadCount.toString()
                          : "0",
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        fontFamily: FontConstants.fontFamily(context.locale),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
