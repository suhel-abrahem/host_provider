import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:go_router/go_router.dart';
import 'package:hosta_provider/core/resource/main_page/glew_effect.dart'
    show GlowOverlay;
import '../../../config/app/app_preferences.dart';

import '../../dependencies_injection.dart';
import '../color_manager.dart';
import '../image_widget.dart';
import 'drawer_button.dart';
import '../../../features/profile_page/domain/entities/profile_entity.dart';
import '../../../generated/locale_keys.g.dart';

import '../../../config/route/routes_manager.dart';
import '../../../config/theme/app_theme.dart';
import '../../../features/login_page/domain/entities/login_state_entity.dart';
import '../../../features/profile_page/data/models/profile_model.dart';
import '../../../features/profile_page/presentation/bloc/get_profile_bloc.dart';
import '../../constants/font_constants.dart';
import '../../constants/language_constant.dart';

import '../../enums/psition_enum.dart';
import '../../util/helper/helper.dart';
import '../custom_widget/dropdown/drop_down_with_label.dart';
import '../custom_widget/snake_bar_widget/snake_bar_widget.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  String? selectedLanguage;
  bool? isDarkTheme = false;
  ProfileModel profileModel = ProfileModel();
  ProfileEntity? userInfo;
  bool isUserInfoLoading = false;
  @override
  void initState() {
    isDarkTheme = getItInstance<AppPreferences>().getAppTheme();

    super.initState();
  }

  @override
  void didUpdateWidget(covariant CustomDrawer oldWidget) {
    profileModel = profileModel.copyWith(
      acceptLanguage: Helper.getCountryCode(context),
    );
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    profileModel = profileModel.copyWith(
      acceptLanguage: Helper.getCountryCode(context),
    );

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    selectedLanguage = context.locale.languageCode;
    return Container(
      width: 250.w,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadiusDirectional.horizontal(
          end: Radius.circular(50.r),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          BlocProvider<GetProfileBloc>(
            create: (context) =>
                getItInstance<GetProfileBloc>()
                  ..add(GetProfileEvent.getProfile(profileModel: profileModel)),
            child: BlocListener<GetProfileBloc, GetProfileState>(
              listener: (context, state) {
                if (state is GetProfileStateLoaded) {
                  setState(() {
                    userInfo = state.profileEntity;
                    isUserInfoLoading = false;
                  });
                } else if (state is GetProfileStateLoading) {
                  setState(() {
                    isUserInfoLoading = true;
                  });
                } else if (state is GetProfileStateNoInternet) {
                  showMessage(
                    context: context,
                    message: LocaleKeys.common_noInternetPullDown.tr(),
                  );
                  setState(() {
                    isUserInfoLoading = false;
                  });
                } else if (state is GetProfileStateUnauthorized) {
                  getItInstance<AppPreferences>().setUserInfo(
                    loginStateEntity: LoginStateEntity(),
                  );
                  setState(() {
                    isUserInfoLoading = false;
                  });
                  context.pushNamed(RoutesName.loginPage);
                } else {
                  showMessage(
                    context: context,
                    message: LocaleKeys.common_error.tr(),
                  );
                  setState(() {
                    isUserInfoLoading = false;
                  });
                }
              },
              child: SizedBox(
                width: 250.w,
                height: 200.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    isUserInfoLoading
                        ? Center(
                            child: CircularProgressIndicator(
                              backgroundColor: ColorManager.backgroundColor,
                            ),
                          )
                        : ClipRRect(
                            borderRadius: BorderRadiusDirectional.only(
                              topEnd: Radius.circular(50.r),
                            ),
                            child: GlowOverlay(
                              glowColor: ColorManager.primaryColor,
                              child: ImageWidget(
                                width: 250.w,
                                height: 200.h,
                                boxFit: BoxFit.cover,
                                errorWidget: Icon(
                                  Icons.account_circle,
                                  size: 60.sp,
                                  color: Theme.of(
                                    context,
                                  ).textTheme.labelLarge?.color,
                                ),
                                imageUrl: userInfo?.avatar ?? "",
                              ),
                            ),
                          ),
                  ],
                ),
              ),
            ),
          ),
          // Divider(
          //   color: ColorManager.backgroundColor.withOpacity(0.5),
          //   thickness: 2.h,
          // ),
          Padding(
            padding: EdgeInsets.only(top: 8.h),
            child: DrawerButtonWidget(
              selected: currentPath?.endsWith(RoutesPath.homePage),
              title: LocaleKeys.homePage_title.tr(),
              icon: Icons.home,
              onPressed: () {
                context.push(RoutesPath.homePage);
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h),
            child: DrawerButtonWidget(
              selected: currentPath?.endsWith(RoutesPath.categoriesPage),
              title: LocaleKeys.categoriesPage_title.tr(),
              icon: Icons.miscellaneous_services,
              onPressed: () {
                context.push(RoutesPath.categoriesPage);
              },
            ),
          ),
          DrawerButtonWidget(
            selected: currentPath?.endsWith(RoutesPath.bookingPage),
            title: LocaleKeys.bookingPage_title.tr(),
            icon: Icons.calendar_month,
            onPressed: () {
              context.push(RoutesPath.bookingPage);
            },
          ),

          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h),
            child: DrawerButtonWidget(
              selected: currentPath?.endsWith(RoutesPath.profilePage),
              title: LocaleKeys.profilePage_title.tr(),
              icon: Icons.account_circle,
              onPressed: () {
                context.push(RoutesPath.profilePage);
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.h),
            child: Divider(
              color: ColorManager.backgroundColor.withValues(alpha: 0.5),
              thickness: 2.h,
            ),
          ),
          Spacer(),
          //Language dropdown
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
            child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.only(end: 8.w),
                    child: Icon(
                      Icons.language,
                      color: ColorManager.backgroundColor,
                      size: 24.sp,
                    ),
                  ),
                  DropDownWithLabel<String>(
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
                    borderRadius: BorderRadius.circular(30.r),
                    label: LocaleKeys.language_choose.tr(),
                    labelStyle: Theme.of(context).textTheme.labelLarge
                        ?.copyWith(
                          fontFamily: FontConstants.fontFamily(context.locale),
                          color: ColorManager.backgroundColor,
                        ),
                    labelPadding: EdgeInsets.only(bottom: 4.h),
                    labelPosition: Position.upper,
                    backgroundColor: Theme.of(context).primaryColor,
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
                    contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                    dropDownWidth: 100.w,
                    dropDownHeight: 40.h,
                    itemWidth: 120.w,
                    isLoading: false,
                    value: Helper.getLanguageName(
                      selectedLanguage ??
                          LanguageConstant.enLoacle.languageCode,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              start: 20.w,
              end: 20.w,
              top: 12.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.brightness_6,
                      color: ColorManager.backgroundColor,
                      size: 24.sp,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(start: 8.w),
                      child: Text(
                        LocaleKeys.theme_choose.tr(),
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          fontFamily: FontConstants.fontFamily(context.locale),
                          color: ColorManager.backgroundColor,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 28.w),
                  child: ThemeSwitcher(
                    builder: (context2) {
                      return SizedBox(
                        width: 70.w,

                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Switch.adaptive(
                            value: isDarkTheme ?? false,
                            inactiveTrackColor: ColorManager.backgroundColor,
                            activeTrackColor: ColorManager.darkBackground,
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
            padding: EdgeInsets.only(bottom: 50.h),
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
                  }
                },
                child: Builder(
                  builder: (context) {
                    return DrawerButtonWidget(
                      title: LocaleKeys.profilePage_logout.tr(),
                      icon: Icons.logout_outlined,
                      onPressed: () {
                        context.read<GetProfileBloc>().add(
                          GetProfileEvent.logout(
                            profileModel: ProfileModel(
                              authToken: getItInstance<AppPreferences>()
                                  .getUserInfo()
                                  ?.access_token,
                            ),
                          ),
                        );
                      },
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
