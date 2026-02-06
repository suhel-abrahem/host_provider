import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '/features/notification_page/domain/entities/notification_entity.dart';

import '../../../config/route/routes_manager.dart';
import '../../../generated/locale_keys.g.dart';
import '../../constants/font_constants.dart';

class BookingNotificationWidget extends StatelessWidget {
  final NotificationEntity? message;
  const BookingNotificationWidget({super.key, this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AlertDialog(
        constraints: BoxConstraints(
          minWidth: 300.w,
          minHeight: (message?.data?["type"].toString() == "booking_completed")
              ? 600.h
              : 320.h,
          maxWidth: 300.w,
          maxHeight: (message?.data?["type"].toString() == "booking_completed")
              ? 650.h
              : 340.h,
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Center(
          child: Text(
            message?.title ?? LocaleKeys.notificationPage_noTitle.tr(),
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
              fontFamily: FontConstants.fontFamily(context.locale),
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        icon: Icon(
          Icons.notifications_active,
          color: Theme.of(context).colorScheme.primary,
          shadows: [
            BoxShadow(
              color: Theme.of(context).shadowColor,
              blurRadius: 8.r,
              offset: Offset(0, 4.h),
            ),
          ],
          size: 28.sp,
        ).animate().shake(duration: 1600.ms),
        content: SizedBox(
          height: (message?.data?["type"].toString() == "booking_completed")
              ? 600.h
              : null,
          child: ListView(
            shrinkWrap: true,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Text(
                  "${LocaleKeys.notificationPage_body.tr()}:",
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    fontFamily: FontConstants.fontFamily(context.locale),
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                child: Container(
                  height: 110.h,
                  width: 284.w,
                  padding: EdgeInsets.symmetric(
                    vertical: 16.h,
                    horizontal: 16.w,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: Theme.of(context).colorScheme.primaryContainer,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        message?.body ??
                            LocaleKeys.notificationPage_noBody.tr(),
                        style: Theme.of(context).textTheme.labelMedium
                            ?.copyWith(
                              fontFamily: FontConstants.fontFamily(
                                context.locale,
                              ),
                            ),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              LocaleKeys.notificationPage_ok.tr(),
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                fontFamily: FontConstants.fontFamily(context.locale),
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              context.pop();
              context.pushNamed(
                RoutesName.serviceInfoPage,
                pathParameters: {
                  "serviceId": message?.data?["booking_id"].toString() ?? "",
                  "isComplete":
                      (message?.data?["type"].toString() == "booking_completed")
                      ? "true"
                      : "false",
                },
              );
            },
            child: Text(
              LocaleKeys.notificationPage_show.tr(),
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                fontFamily: FontConstants.fontFamily(context.locale),
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
