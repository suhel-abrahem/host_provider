import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hosta_provider/core/constants/font_constants.dart';
import 'package:hosta_provider/features/notification_page/domain/entities/notification_entity.dart';

class NotificationWidget extends StatelessWidget {
  final NotificationEntity? notification;
  final VoidCallback? onTap;
  const NotificationWidget({super.key, this.notification, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
        backgroundColor: (notification?.is_read ?? false)
            ? Theme.of(context).scaffoldBackgroundColor
            : Theme.of(context).colorScheme.primary.withValues(alpha: 0.3),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      ),
      child: Row(
        children: [
          Icon(
            Icons.notifications,
            color: Theme.of(context).textTheme.labelLarge?.color,
            size: 32.sp,
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  notification?.title ?? "",
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    fontFamily: FontConstants.fontFamily(context.locale),
                  ),
                  overflow: TextOverflow.ellipsis,
                ),

                Padding(
                  padding: EdgeInsets.only(top: 8.h),
                  child: Text(
                    notification?.body ?? "",
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      fontFamily: FontConstants.fontFamily(context.locale),
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
