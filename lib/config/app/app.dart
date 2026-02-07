import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/core/util/helper/helper.dart';

import '../../core/constants/language_constant.dart';
import '../../core/dependencies_injection.dart';
import '../../core/resource/main_page/booking_notification_widget.dart';
import '../../core/resource/main_page/main_page.dart';
import '../../core/resource/rst_stream/add_notification_function.dart';
import '../../core/resource/rst_stream/message_notification_service.dart';
import '../../core/resource/rst_stream/notification_service.dart';
import '../../core/resource/rst_stream/rst_stream.dart';
import '../../generated/locale_keys.g.dart';
import '../route/routes_manager.dart';
import '../theme/app_theme.dart';
import 'app_preferences.dart';

class HostaProvider extends StatefulWidget {
  const HostaProvider({super.key});

  @override
  State<HostaProvider> createState() => _HostaProviderState();
}

class _HostaProviderState extends State<HostaProvider> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      NotificationService().init();
      // MessageNotificationService().init(
      //   onMessage: (data) {
      //     if (!mounted) return;

      //     if (notifications.any(
      //       (e) => e?.conversation_id == data?.conversation_id,
      //     )) {
      //       return;
      //     }

      //     addNotification(data);
      //   },
      // );
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: false,
      ensureScreenSize: true,
      builder: (context, child) {
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ]);
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
        SystemChrome.setSystemUIOverlayStyle(
          SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            systemNavigationBarColor: Colors.transparent,
            systemNavigationBarIconBrightness:
                (getItInstance<AppPreferences>().getAppTheme() ?? false)
                ? Brightness.dark
                : Brightness.light,
            statusBarIconBrightness:
                (getItInstance<AppPreferences>().getAppTheme() ?? false)
                ? Brightness.dark
                : Brightness.light,
          ),
        );
        return ThemeProvider(
          initTheme: (getItInstance<AppPreferences>().getAppTheme() ?? false)
              ? darkTheme()
              : lightTheme(),
          child: MaterialApp.router(
            key: ValueKey(lastPath),
            debugShowCheckedModeBanner: false,
            title: LocaleKeys.app_name.tr(),
            themeMode: (getItInstance<AppPreferences>().getAppTheme() ?? false)
                ? ThemeMode.dark
                : ThemeMode.light,
            theme: (getItInstance<AppPreferences>().getAppTheme() ?? false)
                ? darkTheme()
                : lightTheme(),

            supportedLocales: LanguageConstant.supportedLocales,
            routerConfig: goRouter,
            locale: Helper.getLocaleByName(
              getItInstance<AppPreferences>().getLanguage() ??
                  LanguageConstant.arName,
            ),
            localizationsDelegates: context.localizationDelegates,
          ),
        );
      },
    );
  }
}
