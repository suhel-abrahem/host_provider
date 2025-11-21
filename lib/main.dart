import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'config/app/app.dart';
import 'config/app/app_preferences.dart';
import 'core/constants/language_constant.dart';
import 'core/dependencies_injection.dart';
import 'core/util/helper/helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
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
  runApp(
    EasyLocalization(
      supportedLocales: LanguageConstant.supportedLocales,
      path: LanguageConstant.path,
      saveLocale: true,
      startLocale: Helper.getLocaleByCode(
        getItInstance<AppPreferences>().getLanguage() ?? LanguageConstant.en,
      ),
      fallbackLocale: LanguageConstant.arLoacle,
      child: HostaProvider(),
    ),
  );
}
