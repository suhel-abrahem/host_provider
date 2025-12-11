import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glass/glass.dart';
import '../../../../config/theme/app_theme.dart';
import '../../../../core/resource/color_manager.dart';
import '../../domain/entities/booking_entity.dart';

import '../../../../core/constants/font_constants.dart';
import '../../../../core/util/helper/helper.dart';
import '../../../../generated/locale_keys.g.dart';

class ServiceInfoWidget extends StatelessWidget {
  final BookingEntity? bookingEntity;
  const ServiceInfoWidget({super.key, this.bookingEntity});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      height: 200.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                bookingEntity?.booking_number.toString() ?? "",
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
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
                  Helper.getStatusName(bookingEntity?.status ?? "") ?? "",
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    fontFamily: FontConstants.fontFamily(context.locale),
                    color: ColorManager.backgroundColor,
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
                    "${LocaleKeys.serviceDetailsPage_service.tr()}:",
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
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
                child: Icon(
                  Icons.calendar_month_outlined,
                  color: Theme.of(context).textTheme.labelSmall?.color,
                ),
              ),
              Text(
                "${LocaleKeys.bookingPage_startTime.tr()}: ",
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  fontFamily: FontConstants.fontFamily(context.locale),
                ),
              ),
              Text(
                DateFormat('yyyy-MM-dd - hh:mm').format(
                  DateTime.tryParse(bookingEntity?.start_time ?? "") ??
                      DateTime.now(),
                ),
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
                child: Icon(
                  Icons.calendar_month_outlined,
                  color: Theme.of(context).textTheme.labelSmall?.color,
                ),
              ),
              Text(
                "${LocaleKeys.bookingPage_endTime.tr()}: ",
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  fontFamily: FontConstants.fontFamily(context.locale),
                ),
              ),
              Text(
                DateFormat('yyyy-MM-dd - hh:mm').format(
                  DateTime.tryParse(bookingEntity?.end_time ?? "") ??
                      DateTime.now(),
                ),
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  fontFamily: FontConstants.fontFamily(context.locale),
                ),
              ),
            ],
          ),
        ],
      ),
    ).asGlass(
      frosted: true,
      blurX: 38,
      blurY: 38,
      tintColor: Theme.of(
        context,
      ).colorScheme.primaryContainer.withValues(alpha: 0.9),
      clipBorderRadius: BorderRadius.circular(12.r),
      border: Theme.of(context).defaultBorderSide,
    );
  }
}
