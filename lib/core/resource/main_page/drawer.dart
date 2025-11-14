import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glass/glass.dart';
import 'package:go_router/go_router.dart';
import 'package:hosta_provider/config/app/app_preferences.dart';
import 'package:hosta_provider/core/dependencies_injection.dart';
import 'package:hosta_provider/core/resource/main_page/drawer_button.dart';
import 'package:hosta_provider/generated/locale_keys.g.dart';

import '../../../config/route/routes_manager.dart';
import '../../../config/theme/app_theme.dart';
import '../../constants/font_constants.dart';
import '../../constants/language_constant.dart';

import '../../enums/psition_enum.dart';
import '../../util/helper/helper.dart';
import '../custom_widget/dropdown/drop_down_with_label.dart';

class CustomDrawer extends StatefulWidget {
  
  const CustomDrawer({super.key});

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
        // color: Theme.of(context).primaryColor,
        // borderRadius: BorderRadius.only(
        //   topRight: Radius.circular(20.r),
        //   bottomRight: Radius.circular(20),
        // ),
      ),
      child: SafeArea(
        
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerButtonWidget(
              selected: currentPath?.endsWith( RoutesPath.homePage),
              title: LocaleKeys.homePage_title.tr(),
              icon: Icons.home,
              onPressed: () {
                context.push(RoutesPath.homePage);
              },
            ),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 8.h),
              child: DrawerButtonWidget(
                selected: currentPath?.endsWith( RoutesPath.categoriesPage),
                title: LocaleKeys.categoriesPage_title.tr(),
                icon: Icons.miscellaneous_services,
                onPressed: () {
                  context.push(RoutesPath.categoriesPage);
                },
              ),
            ),
             DrawerButtonWidget(
              selected: currentPath?.endsWith( RoutesPath.bookingPage),
              title: LocaleKeys.bookingPage_title.tr(),
              icon: Icons.calendar_month,
              onPressed: () {
                context.push(RoutesPath.bookingPage);
              },
            ),
        
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 8.h),
              child: DrawerButtonWidget(
                selected: currentPath?.endsWith( RoutesPath.profilePage),
                title: LocaleKeys.profilePage_title.tr(),
                icon: Icons.account_circle,
                onPressed: () {
                  context.push(RoutesPath.profilePage);
                },
              ),
            ),
            
            Spacer(),
             //Language dropdown
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.w),
              child: Align(
                alignment: AlignmentDirectional.centerStart,
                child: DropDownWithLabel<String>(
                  label: "Language:",
                  labelStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
                        fontFamily: FontConstants.fontFamily(context.locale),
                        ),
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Theme:", style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        fontFamily: FontConstants.fontFamily(context.locale),
                        )),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 12.w),
                    child: ThemeSwitcher(
                      builder: (context2) {
                        return SizedBox(
                          height: 50.h,
                          child: ElevatedButton(
                            
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.w,
                                vertical: 5.h,
                              ),
                              backgroundColor: Colors.transparent,
                              shape: CircleBorder(),
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
                            child: Icon(
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
                  ),
                ],
              ),
             
            ),
            Padding(
             padding: EdgeInsets.only(bottom: 20.h),
              child: DrawerButtonWidget(
                
                title: LocaleKeys.profilePage_logout.tr(),
                icon: Icons.logout_outlined,
                onPressed: () {
                  context.push(RoutesPath.bookingPage);
                },
              ),
            ),
          ],
        ),
      ),
    ).asGlass(
      frosted: true,
      blurX: 8,
      blurY: 8,
      tintColor:
          Theme.of(context).colorScheme.primaryContainer.withValues(alpha: 0.9),
      clipBorderRadius: BorderRadiusDirectional.only(
        topEnd: Radius.circular(20.r),
        bottomEnd: Radius.circular(20.r),
      ),
    );
  }
}
