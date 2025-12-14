import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hosta_provider/config/route/routes_manager.dart';
import 'package:hosta_provider/core/dependencies_injection.dart';
import 'package:hosta_provider/features/login_page/domain/entities/login_state_entity.dart';
import '../../../config/app/app_preferences.dart';
import '../../enums/assets_type_enum.dart';
import '../assets_manager.dart';
import 'package:lottie/lottie.dart';

import '../../../generated/locale_keys.g.dart';
import '../../constants/font_constants.dart';

class UnauthStateWidget extends StatelessWidget {
  final double? lottieWidth;
  final double? lottieHeight;
  final double? width;
  const UnauthStateWidget({
    super.key,
    this.lottieWidth,
    this.lottieHeight,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        LottieBuilder.asset(
          getAssetsPath(
            assetsName: LottiesName.unAuthorized,
            assetsType: AssetsType.lotties,
          ),
          fit: BoxFit.fill,
          width: lottieWidth,
          height: lottieHeight,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SizedBox(
            width: width,
            child: Text(
              LocaleKeys.common_yourSessionHasExpiredPleaseLoginAgain.tr(),
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                fontFamily: FontConstants.fontFamily(context.locale),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        TextButton(
          onPressed: () async {
            await getItInstance<AppPreferences>().setUserInfo(
              loginStateEntity: LoginStateEntity(),
            );
            if (context.mounted) {
              context.push(RoutesPath.loginPage);
            }
          },
          child: Text(
            LocaleKeys.common_tryAgain.tr(),
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
              fontFamily: FontConstants.fontFamily(context.locale),
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
}
