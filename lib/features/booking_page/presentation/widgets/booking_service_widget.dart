import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glass/glass.dart';
import 'package:hosta_provider/core/constants/font_constants.dart';
import 'package:hosta_provider/core/util/helper/helper.dart';
import 'package:hosta_provider/features/booking_page/domain/entities/booking_entity.dart';
import 'package:hosta_provider/generated/locale_keys.g.dart';

class BookingServiceWidget extends StatelessWidget {
  final BookingEntity? bookingEntity;
  const BookingServiceWidget({super.key, this.bookingEntity});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      height: 220.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                bookingEntity?.booking_number.toString() ?? "",
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  fontFamily: FontConstants.fontFamily(context.locale),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: Helper.getColorByStatus(
                    bookingEntity?.status,
                    context,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  bookingEntity?.status ?? "",
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    fontFamily: FontConstants.fontFamily(context.locale),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bookingEntity?.customer?["name"] ?? "",
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontFamily: FontConstants.fontFamily(context.locale),
                    ),
                  ),
                  Text(
                    bookingEntity?.service?["name"] ?? "",
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      fontFamily: FontConstants.fontFamily(context.locale),
                    ),
                  ),
                ],
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "${bookingEntity?.total_price ?? 0} ${LocaleKeys.myServicesPage_iqd.tr()}",
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontFamily: FontConstants.fontFamily(context.locale),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.only(end: 8.w),
                child: Icon(Icons.calendar_month_outlined),
              ),
              Text(
                "${LocaleKeys.bookingPage_startTime.tr()}: ",
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  fontFamily: FontConstants.fontFamily(context.locale),
                ),
              ),
              Text(
                DateFormat(
                  'yyyy-MM-dd - hh:mm',
                ).format(DateTime.parse(bookingEntity?.start_time ?? "")),
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  fontFamily: FontConstants.fontFamily(context.locale),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.only(end: 8.w),
                child: Icon(Icons.calendar_month_outlined),
              ),
              Text(
                "${LocaleKeys.bookingPage_endTime.tr()}: ",
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  fontFamily: FontConstants.fontFamily(context.locale),
                ),
              ),
              Text(
                DateFormat(
                  'yyyy-MM-dd - hh:mm',
                ).format(DateTime.parse(bookingEntity?.end_time ?? "")),
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  fontFamily: FontConstants.fontFamily(context.locale),
                ),
              ),
            ],
          ),
          switch (bookingEntity?.status) {
            "pending" => Row(
              children: [
                SizedBox(height: 8.h),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    LocaleKeys.bookingPage_acceptBooking.tr(),
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontFamily: FontConstants.fontFamily(context.locale),
                    ),
                  ),
                ),
                SizedBox(width: 16.w),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.error,
                  ),
                  child: Text(
                    LocaleKeys.bookingPage_rejectBooking.tr(),
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontFamily: FontConstants.fontFamily(context.locale),
                    ),
                  ),
                ),
              ],
            ),
            "confirmed" => SizedBox(
              height: 40.h,
              child: ElevatedButton(
                onPressed: () {},
                style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                  padding: WidgetStateProperty.resolveWith((callback) {
                    if (callback.contains(WidgetState.pressed)) {
                      return EdgeInsets.symmetric(vertical: 12.h);
                    }
                    return EdgeInsets.zero;
                  }),
                  backgroundColor: WidgetStatePropertyAll(
                    Helper.getColorByStatus("confirmed", context)!,
                  ),
                ),
                child: Center(
                  child: Text(
                    LocaleKeys.bookingPage_startService.tr(),
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontFamily: FontConstants.fontFamily(context.locale),
                    ),
                  ),
                ),
              ),
            ),
            "in_progress" => SizedBox(
              height: 40.h,
              child: ElevatedButton(
                onPressed: () {},
                style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                  backgroundColor: WidgetStatePropertyAll(
                    Helper.getColorByStatus("in_progress", context)!,
                  ),
                ),
                child: Center(
                  child: Text(
                    LocaleKeys.bookingPage_finishService.tr(),
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontFamily: FontConstants.fontFamily(context.locale),
                    ),
                  ),
                ),
              ),
            ),
            "completed" => SizedBox(),
            "rejected" => SizedBox(),
            _ => SizedBox(height: 0.h),
          },
        ],
      ),
    ).asGlass(
      tintColor: Theme.of(context).colorScheme.primaryContainer,
      clipBorderRadius: BorderRadius.circular(12),
      blurX: 2,
      blurY: 2,
    );
  }
}
