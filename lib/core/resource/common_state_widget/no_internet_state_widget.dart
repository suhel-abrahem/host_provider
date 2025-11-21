import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../enums/assets_type_enum.dart';
import '../assets_manager.dart';
import 'package:lottie/lottie.dart';

import '../../../generated/locale_keys.g.dart';
import '../../constants/font_constants.dart';

class NoInternetStateWidget extends StatelessWidget {
  final double? lottieWidth;
  final double? lottieHeight;
  const NoInternetStateWidget({super.key, this.lottieWidth, this.lottieHeight});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        LottieBuilder.asset(
          getAssetsPath(
            assetsName: LottiesName.noInternet,
            assetsType: AssetsType.lotties,
          ),
          fit: BoxFit.fill,
          width: lottieWidth,
          height: lottieHeight,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Text(
            LocaleKeys.common_noInternetPullDown.tr(),
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
              fontFamily: FontConstants.fontFamily(context.locale),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
