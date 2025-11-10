import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glass/glass.dart';

import 'package:hosta_provider/core/constants/font_constants.dart';
import 'package:hosta_provider/core/resource/common_entity/customer_entity.dart';
import 'package:hosta_provider/core/resource/custom_widget/snake_bar_widget/snake_bar_widget.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../generated/locale_keys.g.dart';

class ClientInfoWidget extends StatelessWidget {
  final CustomerEntity? customerEntity;
  const ClientInfoWidget({super.key, this.customerEntity});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            LocaleKeys.serviceDetailsPage_clientInfo.tr(),
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
              fontFamily: FontConstants.fontFamily(context.locale),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 30.r,
                child: CachedNetworkImage(
                  imageUrl: customerEntity?.avatar ?? "",
                  fit: BoxFit.cover,
                  progressIndicatorBuilder: (context, url, progress) =>
                      CircularProgressIndicator(value: progress.progress),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      customerEntity?.name ?? "",
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        fontFamily: FontConstants.fontFamily(context.locale),
                      ),
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      customerEntity?.phone ?? "",
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        fontFamily: FontConstants.fontFamily(context.locale),
                      ),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () async {
                  final Uri phoneUri = Uri(
                    scheme: 'tel',
                    path: customerEntity?.phone ?? "",
                  );

                  if (await canLaunchUrl(phoneUri)) {
                    await launchUrl(phoneUri);
                  } else {
                    if (!context.mounted) return;
                    showMessage(
                      message: LocaleKeys.common_error.tr(),
                      context: context,
                    );
                  }
                },
                style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                  padding: WidgetStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                  ),
                  backgroundColor: WidgetStatePropertyAll(
                    Theme.of(context).colorScheme.primaryContainer,
                  ),
                  shape: WidgetStatePropertyAll(CircleBorder()),
                ),
                child: Icon(Icons.phone, color: Colors.green, size: 22.sp),
              ),
            ],
          ),
        ],
      ),
    ).asGlass(
      tintColor: Theme.of(context).colorScheme.primaryContainer,
      clipBorderRadius: BorderRadius.circular(12),
      blurX: 3,
      blurY: 3,
    );
  }
}
