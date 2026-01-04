import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glass/glass.dart';
import 'package:go_router/go_router.dart';

import 'package:permission_handler/permission_handler.dart' as AppSettings;
import '../../../../core/data_state/data_state.dart';
import '../../../../core/resource/color_manager.dart';
import '../../../../core/resource/firebase_common_services/firebase_messageing_service.dart';
import '../../../../core/resource/main_page/main_page.dart';

import '../../../../main.dart';
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
  bool? isNotificationEnabled = false;
  LoginStateEntity? loginState;
  Future<void> checkNotificationPermission() async {
    bool hasPermission = await getItInstance<FirebaseMessagingService>()
        .hasPermission();
    setState(() {
      isNotificationEnabled = hasPermission;
    });
  }

  @override
  void initState() {
    isDarkTheme = getItInstance<AppPreferences>().getAppTheme();
    loginState = getItInstance<AppPreferences>().getUserInfo();
    super.initState();
    checkNotificationPermission();
  }

  @override
  Widget build(BuildContext context) {
    return MainPage(
      title: LocaleKeys.profilePage_settings.tr(),
      body: Column(
        children: [
          //Language dropdown
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child:
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 20.h,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: DropDownWithLabel<String>(
                      menuBoxShadow: BoxShadow(
                        color: Theme.of(context).shadowColor,
                        blurRadius: 4.r,
                        offset: Offset(1.w, 2.h),
                      ),
                      boxShadow: BoxShadow(
                        color: Theme.of(context).shadowColor,

                        offset: Offset(0, 1.h),
                      ),
                      valueColor: ColorManager.backgroundColor,
                      borderRadius: BorderRadius.circular(18.r),
                      label: LocaleKeys.language_choose.tr(),
                      labelStyle: Theme.of(context).textTheme.labelLarge
                          ?.copyWith(
                            fontFamily: FontConstants.fontFamily(
                              context.locale,
                            ),
                          ),
                      labelPadding: EdgeInsetsDirectional.only(end: 12.w),
                      labelPosition: Position.beside,
                      backgroundColor: Theme.of(context).primaryColor,
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
                            languageCode: newLanguage,
                          );
                          getItInstance<FirebaseMessagingService>()
                              .updateDeviceLanguage()
                              .then((value) async {
                                if (value is DataSuccess) {
                                  await getItInstance<AppPreferences>()
                                      .setUserInfo(
                                        loginStateEntity: loginState?.copyWith(
                                          isFcmTokenSet: true,
                                          fcmToken: value?.data,
                                        ),
                                      );
                                  if (context.mounted) {
                                    showMessage(
                                      message: LocaleKeys.common_success.tr(),
                                      context: context,
                                    );
                                  }
                                } else {
                                  await getItInstance<AppPreferences>()
                                      .setUserInfo(
                                        loginStateEntity: loginState?.copyWith(
                                          isFcmTokenSet: false,
                                        ),
                                      );
                                  if (context.mounted) {
                                    showMessage(
                                      message: LocaleKeys
                                          .common_notificationTokenErrorPleaseFixItOnSettings
                                          .tr(),
                                      context: context,
                                      haveButton: true,
                                      buttonWidget: Icon(
                                        Icons.settings,
                                        size: 16.w,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        context.push(RoutesPath.settingPage);
                                      },
                                    );
                                  }
                                }
                              });
                          ;
                          context.go(RoutesPath.homePage);
                        }
                      },
                      stringConverter: (string) {
                        return string.toString();
                      },
                      dropDownWidth: 110.w,
                      dropDownHeight: 40.h,
                      itemWidth: 140.w,
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
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
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
                        LocaleKeys.theme_choose.tr(),
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          fontFamily: FontConstants.fontFamily(context.locale),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.w),
                        child: ThemeSwitcher(
                          builder: (context2) {
                            return Switch.adaptive(
                              value: isDarkTheme ?? false,
                              inactiveTrackColor: ColorManager.backgroundColor,
                              activeTrackColor: ColorManager.primaryColor,
                              thumbIcon: WidgetStateProperty.resolveWith((
                                states,
                              ) {
                                return Icon(
                                  (isDarkTheme ?? false)
                                      ? Icons.dark_mode
                                      : Icons.light_mode,
                                  size: 16.sp,
                                  color: (isDarkTheme ?? false)
                                      ? ColorManager.darkBackground
                                      : ColorManager.darkBackground,
                                );
                              }),
                              onChanged: (bool value) {
                                setState(() {
                                  isDarkTheme = value;
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
                        LocaleKeys.settingsPage_allowNotifications.tr(),
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          fontFamily: FontConstants.fontFamily(context.locale),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.w),
                        child: Switch.adaptive(
                          value: isNotificationEnabled ?? false,
                          inactiveTrackColor: ColorManager.backgroundColor,
                          activeTrackColor: Theme.of(context).primaryColor,
                          activeThumbColor: Theme.of(
                            context,
                          ).scaffoldBackgroundColor,
                          thumbIcon: WidgetStateProperty.resolveWith((states) {
                            if (states.contains(WidgetState.selected)) {
                              return Icon(
                                Icons.notifications_active,
                                size: 16.sp,
                                color: Theme.of(
                                  context,
                                ).textTheme.labelLarge?.color,
                              );
                            } else {
                              return Icon(
                                Icons.notifications_off,
                                size: 16.sp,
                                color: ColorManager.darkBackground,
                              );
                            }
                          }),
                          onChanged: (bool value) async {
                            await AppSettings.openAppSettings();
                            checkNotificationPermission();
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
          AnimatedOpacity(
            opacity: (loginState?.isFcmTokenSet ?? false) ? 0 : 1,
            duration: 300.ms,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child:
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 16.h,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 240.w,
                          child: Text(
                            LocaleKeys
                                .settingsPage_itsSemsYouHaveProblemsWithNotificationToken
                                .tr(),
                            style: Theme.of(context).textTheme.labelMedium
                                ?.copyWith(
                                  fontFamily: FontConstants.fontFamily(
                                    context.locale,
                                  ),
                                ),
                          ),
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: () async {
                            final LoginStateEntity? loginState =
                                getItInstance<AppPreferences>().getUserInfo();

                            if (loginState != null &&
                                !(loginState.isFcmTokenSet ?? false)) {
                              await getItInstance<FirebaseMessagingService>()
                                  .setDeviceToken()
                                  .then((value) async {
                                    if (value is DataSuccess) {
                                      await getItInstance<AppPreferences>()
                                          .setUserInfo(
                                            loginStateEntity: loginState
                                                .copyWith(
                                                  isFcmTokenSet: true,
                                                  fcmToken: value?.data,
                                                ),
                                          );

                                      showMessage(
                                        message: LocaleKeys.common_success.tr(),
                                        context: context,
                                      );
                                    } else {
                                      await getItInstance<AppPreferences>()
                                          .setUserInfo(
                                            loginStateEntity: loginState
                                                .copyWith(isFcmTokenSet: false),
                                          );
                                      if (context.mounted) {
                                        showMessage(
                                          message: LocaleKeys
                                              .common_notificationTokenErrorPleaseFixItOnSettings
                                              .tr(),
                                          context: context,
                                          haveButton: false,
                                          buttonWidget: Icon(
                                            Icons.settings,
                                            size: 16.w,
                                            color: Colors.white,
                                          ),
                                          onPressed: () {
                                            context.push(
                                              RoutesPath.settingPage,
                                            );
                                          },
                                        );
                                      }
                                    }
                                  });
                            }
                          },
                          child: Text(
                            LocaleKeys.settingsPage_fixIt.tr(),
                            style: Theme.of(context).textTheme.labelMedium
                                ?.copyWith(
                                  fontFamily: FontConstants.fontFamily(
                                    context.locale,
                                  ),
                                  color: Theme.of(context).primaryColor,
                                ),
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
                    socketService.disconnect();
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
