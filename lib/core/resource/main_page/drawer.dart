import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hosta_provider/config/app/app_preferences.dart';
import 'package:hosta_provider/core/dependencies_injection.dart';
import 'package:hosta_provider/core/resource/main_page/drawer_button.dart';

import '../../../config/route/routes_manager.dart';
import '../../../config/theme/app_theme.dart';
import '../../constants/language_constant.dart';

import '../../enums/psition_enum.dart';
import '../../util/helper/helper.dart';
import '../custom_widget/dropdown/drop_down_with_label.dart';

class CustomDrawer extends StatefulWidget {
  final String? currentPagePath;
  const CustomDrawer({super.key, this.currentPagePath});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  String? selectedLanguage;
  bool? isDarkTheme = false;
  @override
  void initState() {
    isDarkTheme = getItInstance<AppPreferences>().getAppTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    selectedLanguage = context.locale.languageCode;
    return Container(
      width: 250.w,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20.r),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: ListView(
        children: [
          DrawerButtonWidget(
            pagePath: RoutesPath.homePage,
            currentPagePath: widget.currentPagePath,
            title: "Home",
            icon: Icons.home_rounded,
            onPressed: () {
              context.push(RoutesPath.homePage);
            },
          ),
          DrawerButtonWidget(
            pagePath: RoutesPath.categoriesPage,
            currentPagePath: widget.currentPagePath,
            title: "Categories",
            icon: Icons.category_rounded,
            onPressed: () {
              context.push(RoutesPath.categoriesPage);
            },
          ),
          DrawerButtonWidget(
            pagePath: RoutesPath.settingPage,
            currentPagePath: widget.currentPagePath,
            title: "Settings",
            icon: Icons.settings_rounded,
            onPressed: () {
              context.push(RoutesPath.settingPage);
            },
          ),
          //Language dropdown
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.w),
            child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: DropDownWithLabel<String>(
                label: "Language:",
                labelStyle: Theme.of(context).textTheme.labelLarge,
                labelPadding: EdgeInsets.symmetric(horizontal: 12.w),
                labelPosition: Position.beside,
                backgroundColor: Theme.of(context).colorScheme.surface,
                items: LanguageConstant.supportedLanguagesNames,
                onChange: (newLanguage) {
                  if (newLanguage != null) {
                    setState(() {
                      selectedLanguage = newLanguage;
                    });
                    context.setLocale(Helper.getLocaleByName(newLanguage));
                    getItInstance<AppPreferences>().setLanguage(
                      languageCode: Helper.getLocaleByName(
                        newLanguage,
                      ).languageCode,
                    );
                    context.go(RoutesPath.homePage);
                  }
                },
                stringConverter: (string) {
                  return string.toString();
                },
                dropDownWidth: 100.w,
                dropDownHeight: 50.h,
                itemWidth: 120.w,
                isLoading: false,
                value: Helper.getLanguageName(
                  selectedLanguage ?? LanguageConstant.enLoacle.languageCode,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Theme:", style: Theme.of(context).textTheme.labelLarge),
                ThemeSwitcher(
                  builder: (context2) {
                    return SizedBox(
                      height: 50.h,
                      child: ElevatedButton.icon(
                        label: Text(
                          (isDarkTheme ?? false) ? "Dark" : "Light",
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.w,
                            vertical: 5.h,
                          ),
                          backgroundColor: Theme.of(
                            context,
                          ).colorScheme.surface,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            isDarkTheme = !(isDarkTheme ?? false);
                          });
                          getItInstance<AppPreferences>().setAppTheme(
                            isDarkTheme: isDarkTheme,
                          );
                          ThemeSwitcher.of(context2).changeTheme(
                            offset: Offset(-1, -1),
                            theme: (isDarkTheme ?? false)
                                ? darkTheme()
                                : lightTheme(),
                            isReversed: true,
                          );
                        },
                        icon: Icon(
                          (isDarkTheme ?? false)
                              ? Icons.dark_mode
                              : Icons.light_mode,
                          size: 24.sp,
                          color: Theme.of(context).textTheme.labelLarge?.color,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
