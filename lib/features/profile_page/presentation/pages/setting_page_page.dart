import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glass/glass.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/resource/main_page/main_page.dart';
import '../bloc/get_profile_bloc.dart';
import '../../../../generated/locale_keys.g.dart';

import '../../../../config/app/app_preferences.dart';
import '../../../../config/route/routes_manager.dart';
import '../../../../config/theme/app_theme.dart';
import '../../../../core/constants/font_constants.dart';
import '../../../../core/constants/language_constant.dart';
import '../../../../core/dependencies_injection.dart';
import '../../../../core/enums/psition_enum.dart';
import '../../../../core/resource/custom_widget/dropdown/drop_down_with_label.dart';
import '../../../../core/resource/custom_widget/snake_bar_widget/snake_bar_widget.dart';
import '../../../../core/util/helper/helper.dart';
import '../../../login_page/domain/entities/login_state_entity.dart';
import '../../data/models/profile_model.dart';

class SettingPagePage extends StatefulWidget {
  const SettingPagePage({super.key});

  @override
  State<SettingPagePage> createState() => _SettingPagePageState();
}

class _SettingPagePageState extends State<SettingPagePage> {
  String? selectedLanguage;
  bool? isDarkTheme = false;
  @override
  void initState() {
    isDarkTheme = getItInstance<AppPreferences>().getAppTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MainPage(
      title: LocaleKeys.profilePage_settings.tr(),
      body: Column(
        children: [
          //Language dropdown
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child:
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 20.h,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: DropDownWithLabel<String>(
                      label: "Language:",
                      labelStyle: Theme.of(context).textTheme.labelLarge
                          ?.copyWith(
                            fontFamily: FontConstants.fontFamily(
                              context.locale,
                            ),
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
                          context.setLocale(
                            Helper.getLocaleByName(newLanguage),
                          );
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
                        selectedLanguage ??
                            LanguageConstant.enLoacle.languageCode,
                      ),
                    ),
                  ),
                ).asGlass(
                  frosted: true,
                  blurX: 38,
                  blurY: 38,
                  tintColor: Theme.of(
                    context,
                  ).colorScheme.primary.withValues(alpha: 0.9),
                  clipBorderRadius: BorderRadius.circular(12.r),
                  border: Theme.of(context).defaultBorderSide,
                ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child:
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 20.h,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Theme:",
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          fontFamily: FontConstants.fontFamily(context.locale),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.w),
                        child: ThemeSwitcher(
                          builder: (context2) {
                            return SizedBox(
                              height: 40.h,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12.w,
                                    vertical: 12.h,
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
                                  size: 20.sp,
                                  color: Theme.of(
                                    context,
                                  ).textTheme.labelLarge?.color,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ).asGlass(
                  frosted: true,
                  blurX: 38,
                  blurY: 38,
                  tintColor: Theme.of(
                    context,
                  ).colorScheme.primary.withValues(alpha: 0.9),
                  clipBorderRadius: BorderRadius.circular(12.r),
                  border: Theme.of(context).defaultBorderSide,
                ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 50.h),
            child: BlocProvider<GetProfileBloc>(
              create: (context) =>
                  getItInstance<GetProfileBloc>()
                    ..add(GetProfileEvent.started()),
              child: BlocListener<GetProfileBloc, GetProfileState>(
                listener: (context, state) {
                  if (state is GetProfileStateLoggedOut) {
                    getItInstance<AppPreferences>().setUserInfo(
                      loginStateEntity: LoginStateEntity(),
                    );
                    // Navigate to login page or perform other actions
                    context.goNamed(RoutesName.loginPage);
                  } else if (state is GetProfileStateLogoutError) {
                    // Show error message
                    showMessage(
                      message: state.message ?? LocaleKeys.common_error.tr(),
                      context: context,
                    );
                  } else if (state is GetProfileStateUnauthorized) {
                    getItInstance<AppPreferences>().setUserInfo(
                      loginStateEntity: LoginStateEntity(),
                    );
                  }
                },
                child: Builder(
                  builder: (context) {
                    return ElevatedButton(
                      onPressed: () {
                        context.read<GetProfileBloc>().add(
                          GetProfileEvent.logout(profileModel: ProfileModel()),
                        );
                      },
                      style: Theme.of(context).elevatedButtonTheme.style
                          ?.copyWith(
                            backgroundColor: WidgetStatePropertyAll(
                              Colors.transparent,
                            ),
                            shadowColor: WidgetStatePropertyAll(
                              Colors.transparent,
                            ),
                            padding: WidgetStatePropertyAll(EdgeInsets.zero),
                          ),
                      child:
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 16.h,
                              horizontal: 16.w,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 4.w,
                                    vertical: 4.h,
                                  ),
                                  child: Icon(
                                    Icons.logout_outlined,
                                    color: Theme.of(context).colorScheme.error,
                                    size: 24.r,
                                  ),
                                ).asGlass(
                                  frosted: true,
                                  blurX: 28,
                                  blurY: 28,
                                  tintColor: Theme.of(
                                    context,
                                  ).colorScheme.error.withValues(alpha: 0.9),
                                  clipBorderRadius: BorderRadius.circular(12.r),
                                  border: Theme.of(
                                    context,
                                  ).defaultBorderSideError,
                                ),
                                SizedBox(
                                  width: 220.w,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        LocaleKeys.profilePage_logout.tr(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge
                                            ?.copyWith(
                                              fontFamily:
                                                  FontConstants.fontFamily(
                                                    context.locale,
                                                  ),
                                            ),
                                      ),
                                      Text(
                                        LocaleKeys
                                            .profilePage_signOutOfYourAccount
                                            .tr(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall
                                            ?.copyWith(
                                              fontFamily:
                                                  FontConstants.fontFamily(
                                                    context.locale,
                                                  ),
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Theme.of(context).iconTheme.color,
                                  size: 16.r,
                                ),
                              ],
                            ),
                          ).asGlass(
                            frosted: true,
                            blurX: 38,
                            blurY: 38,
                            tintColor: Theme.of(
                              context,
                            ).colorScheme.error.withValues(alpha: 0.9),
                            clipBorderRadius: BorderRadius.circular(12.r),
                            border: Theme.of(context).defaultBorderSideError,
                          ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
