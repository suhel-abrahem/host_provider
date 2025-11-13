import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:hosta_provider/config/app/app.dart';
import 'package:hosta_provider/config/app/app_preferences.dart';
import 'package:hosta_provider/core/constants/language_constant.dart';
import 'package:hosta_provider/core/dependencies_injection.dart';
import 'package:hosta_provider/core/util/helper/helper.dart';

void main() async {
  await WidgetsFlutterBinding.ensureInitialized();
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
  print("from main:${getItInstance<AppPreferences>().getUserInfo()}");
}
