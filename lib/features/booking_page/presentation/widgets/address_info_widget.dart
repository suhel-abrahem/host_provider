import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glass/glass.dart';
import '../../../../config/theme/app_theme.dart';
import '../../../../core/constants/font_constants.dart';
import '../../../../core/resource/common_entity/addresses_entity.dart';
import '../../../../generated/locale_keys.g.dart';
import 'package:url_launcher/url_launcher.dart';

class AddressInfoWidget extends StatelessWidget {
  final List<AddressesEntity?>? addressesEntity;
  const AddressInfoWidget({super.key, this.addressesEntity});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            LocaleKeys.serviceDetailsPage_clientAddress.tr(),
            style: Theme.of(context).textTheme.labelLarge,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.location_on,
                color: Theme.of(context).colorScheme.error,
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(start: 8.w),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    addressesEntity?.last?.address ??
                        LocaleKeys.serviceDetailsPage_noAddress.tr(),
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      fontFamily: FontConstants.fontFamily(context.locale),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: SizedBox(
              height: 40.h,
              child: ElevatedButton(
                onPressed: () async {
                  // Replace with your coordinates
                  final double lat =
                      double.tryParse(addressesEntity?.last?.lat ?? '') ?? 0;
                  final double lng =
                      double.tryParse(addressesEntity?.last?.lng ?? '') ?? 0;

                  final Uri mapUri = Uri.parse("geo:$lat,$lng?q=$lat,$lng");

                  if (await canLaunchUrl(mapUri)) {
                    await launchUrl(
                      mapUri,
                      mode: LaunchMode.externalApplication,
                    );
                  } else {
                    // Optional: fallback to Google Maps web
                    final Uri webUri = Uri.parse(
                      "https://www.google.com/maps/search/?api=1&query=$lat,$lng",
                    );
                    await launchUrl(
                      webUri,
                      mode: LaunchMode.externalApplication,
                    );
                  }
                },
                style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                  padding: WidgetStateProperty.resolveWith((callback) {
                    if (callback.contains(WidgetState.pressed)) {
                      return EdgeInsets.symmetric(vertical: 12.h);
                    }
                    return EdgeInsets.zero;
                  }),
                ),
                child: Center(
                  child: Text(
                    LocaleKeys.serviceDetailsPage_showOnMap.tr(),
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontFamily: FontConstants.fontFamily(context.locale),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ).asGlass(
      frosted: true,
      blurX: 8,
      blurY: 8,
      tintColor: Theme.of(
        context,
      ).colorScheme.primaryContainer.withValues(alpha: 0.9),
      clipBorderRadius: BorderRadius.circular(12.r),
      border: Theme.of(context).defaultBorderSide,
    );
  }
}
