import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hosta_provider/config/app/app_preferences.dart';
import 'package:hosta_provider/config/route/routes_manager.dart';
import 'package:hosta_provider/config/theme/app_theme.dart';
import 'package:hosta_provider/core/dependencies_injection.dart';
import 'package:hosta_provider/generated/locale_keys.g.dart';

import '../../core/constants/language_constant.dart';

class HostaProvider extends StatelessWidget {
  const HostaProvider({super.key});

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
            locale: context.locale,
            localizationsDelegates: context.localizationDelegates,
          ),
        );
      },
    );
  }
}
