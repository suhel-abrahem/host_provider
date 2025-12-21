import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../config/app/app_preferences.dart';
import '../../../../config/route/routes_manager.dart';
import '../../../../config/theme/app_theme.dart';
import '../../../../core/constants/font_constants.dart';
import '../../../../core/constants/language_constant.dart';
import '../../../../core/dependencies_injection.dart';
import '../../../../generated/locale_keys.g.dart';

import '../../../../core/enums/assets_type_enum.dart';
import '../../../../core/resource/assets_manager.dart';
import 'package:restart/restart.dart';

class FirstUsePage extends StatefulWidget {
  const FirstUsePage({super.key});

  @override
  State<FirstUsePage> createState() => _FirstUsePageState();
}

class _FirstUsePageState extends State<FirstUsePage> {
  Locale? selectedLocale;
  bool isDarkTheme = true;
  String? languageName;
  @override
  void didUpdateWidget(covariant FirstUsePage oldWidget) {
    isDarkTheme = Theme.of(context).brightness == Brightness.dark
        ? true
        : false;
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    isDarkTheme = getItInstance<AppPreferences>().getAppTheme() ?? false;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.symmetric(vertical: 50.h),
            child: SvgPicture.asset(
              getAssetsPath(
                assetsName: ImagesName.loginImage,
                assetsType: AssetsType.image,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.only(top: 50.h),
            child: Center(
              child: Text(
                LocaleKeys.language_choose.tr(),
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  fontFamily: FontConstants.fontFamily(context.locale),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(vertical: 20.h),
            child: SizedBox(
              height: 180.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 200.w,
                    child: ElevatedButton(
                      style: Theme.of(context).elevatedButtonTheme.style
                          ?.copyWith(
                            backgroundColor: WidgetStatePropertyAll(
                              (selectedLocale == LanguageConstant.enLoacle)
                                  ? Theme.of(context).colorScheme.primary
                                  : Theme.of(context).colorScheme.surface,
                            ),
                          ),
                      onPressed: () {
                        setState(() {
                          selectedLocale = LanguageConstant.enLoacle;
                          languageName = LanguageConstant.enName;
                        });
                      },
                      child: Text(
                        LocaleKeys.language_english.tr(),
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          fontFamily: FontConstants.fontFamily(context.locale),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 200.w,
                    child: ElevatedButton(
                      style: Theme.of(context).elevatedButtonTheme.style
                          ?.copyWith(
                            backgroundColor: WidgetStatePropertyAll(
                              (selectedLocale == LanguageConstant.arLoacle)
                                  ? Theme.of(context).colorScheme.primary
                                  : Theme.of(context).colorScheme.surface,
                            ),
                          ),
                      onPressed: () {
                        setState(() {
                          selectedLocale = LanguageConstant.arLoacle;
                          languageName = LanguageConstant.arName;
                        });
                      },
                      child: Text(
                        LocaleKeys.language_arabic.tr(),
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          fontFamily: FontConstants.fontFamily(context.locale),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 200.w,
                    child: ElevatedButton(
                      style: Theme.of(context).elevatedButtonTheme.style
                          ?.copyWith(
                            backgroundColor: WidgetStatePropertyAll(
                              (selectedLocale == LanguageConstant.faLocale)
                                  ? Theme.of(context).colorScheme.primary
                                  : Theme.of(context).colorScheme.surface,
                            ),
                          ),
                      onPressed: () {
                        setState(() {
                          selectedLocale = LanguageConstant.faLocale;
                          languageName = LanguageConstant.faName;
                        });
                      },
                      child: Text(
                        LocaleKeys.language_kurdish.tr(),
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          fontFamily: FontConstants.fontFamily(context.locale),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h),
            child: Center(
              child: Text(
                LocaleKeys.theme_choose.tr(),
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  fontFamily: FontConstants.fontFamily(context.locale),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(),
            child: ThemeSwitcher(
              builder: (context) => ElevatedButton(
                style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                  shape: WidgetStatePropertyAll(CircleBorder()),
                  backgroundColor: WidgetStatePropertyAll(
                    Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    isDarkTheme = !isDarkTheme;
                  });
                  getItInstance<AppPreferences>().setAppTheme(
                    isDarkTheme: isDarkTheme,
                  );
                  ThemeSwitcher.of(context).changeTheme(
                    theme: isDarkTheme ? darkTheme() : lightTheme(),
                  );
                },
                child: Icon(
                  isDarkTheme
                      ? Icons.dark_mode_outlined
                      : Icons.light_mode_outlined,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 100.h),
            child: Center(
              child: SizedBox(
                width: 200.w,
                child: ElevatedButton(
                  onPressed: selectedLocale != null
                      ? () {
                          context.setLocale(selectedLocale!);
                          getItInstance<AppPreferences>().setLanguage(
                            languageCode: languageName,
                          );
                          getItInstance<AppPreferences>().setFirstUse(
                            isFirstUse: true,
                          );

                          context.goNamed(RoutesName.loginPage);
                          restart;
                        }
                      : null,
                  child: Text(
                    LocaleKeys.common_save.tr(),
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
    );
  }
}
