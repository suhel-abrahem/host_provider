import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../config/app/app_preferences.dart';
import '../../../config/route/routes_manager.dart';
import '../../../features/login_page/domain/entities/login_state_entity.dart';
import '../../../generated/locale_keys.g.dart';
import '../../data_state/data_state.dart';
import '../../dependencies_injection.dart';
import '../custom_widget/snake_bar_widget/snake_bar_widget.dart';
import '../firebase_common_services/firebase_messageing_service.dart';

Future<void> setFcmTokenForCurrentUser({
  required BuildContext context,
  bool? showSuccessMessage = false,
}) async {
  final LoginStateEntity? loginState = getItInstance<AppPreferences>()
      .getUserInfo();

  if (loginState != null && !(loginState.isFcmTokenSet ?? false)) {
    await getItInstance<FirebaseMessagingService>().setDeviceToken().then((
      value,
    ) async {
      if (value is DataSuccess) {
        await getItInstance<AppPreferences>().setUserInfo(
          loginStateEntity: loginState.copyWith(
            isFcmTokenSet: true,
            fcmToken: value?.data,
          ),
        );
        if (showSuccessMessage == true && context.mounted) {
          showMessage(
            message: LocaleKeys.common_success.tr(),
            context: context,
          );
        }
      } else {
        await getItInstance<AppPreferences>().setUserInfo(
          loginStateEntity: loginState.copyWith(isFcmTokenSet: false),
        );
        if (context.mounted) {
          showMessage(
            message: LocaleKeys
                .common_notificationTokenErrorPleaseFixItOnSettings
                .tr(),
            context: context,
            haveButton: true,
            buttonTitle: LocaleKeys.profilePage_settings.tr(),
            onPressed: () {
              context.pushNamed(RoutesName.settingsPage);
            },
          );
        }
      }
    });
  }
}
