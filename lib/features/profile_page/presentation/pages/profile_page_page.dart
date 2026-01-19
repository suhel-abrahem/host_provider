import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glass/glass.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/theme/app_theme.dart';
import '../../../../core/resource/color_manager.dart';
import '../../../../core/resource/common_entity/addresses_entity.dart';
import '../../../../core/resource/common_state_widget/no_data_state_widget.dart';
import '../../../../core/resource/common_state_widget/no_internet_state_widget.dart';
import '../../../../core/resource/common_state_widget/unAuth_state_widget.dart';
import '../../../../core/resource/custom_widget/snake_bar_widget/snake_bar_widget.dart';
import '../../../../core/resource/main_page/main_page.dart';
import '../../../../core/util/helper/helper.dart';
import '../../../login_page/domain/entities/login_state_entity.dart';
import '../widgets/user_info_container_widget.dart';

import '../../../../config/app/app_preferences.dart';
import '../../../../config/route/routes_manager.dart';
import '../../../../core/constants/font_constants.dart';
import '../../../../core/dependencies_injection.dart';
import '../../../../core/resource/common_state_widget/error_state_widget.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../data/models/profile_model.dart';
import '../../domain/entities/profile_entity.dart';
import '../bloc/get_profile_bloc.dart';

class ProfilePagePage extends StatefulWidget {
  const ProfilePagePage({super.key});

  @override
  State<ProfilePagePage> createState() => _ProfilePagePageState();
}

class _ProfilePagePageState extends State<ProfilePagePage> {
  ProfileModel profileModel = ProfileModel();
  @override
  void didChangeDependencies() {
    profileModel = profileModel.copyWith(
      acceptLanguage: Helper.getCountryCode(context),
    );

    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant ProfilePagePage oldWidget) {
    profileModel = profileModel.copyWith(
      acceptLanguage: Helper.getCountryCode(context),
    );
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return MainPage(
      title: LocaleKeys.profilePage_title.tr(),
      body: BlocProvider<GetProfileBloc>(
        create: (context) =>
            getItInstance<GetProfileBloc>()
              ..add(GetProfileEvent.getProfile(profileModel: profileModel)),
        child: ListView(
          children: [
            BlocBuilder<GetProfileBloc, GetProfileState>(
              builder: (context, state) {
                return state.when(
                  initial: () => Center(child: ErrorStateWidget()),
                  loading: () => Center(child: CircularProgressIndicator()),
                  loaded: (data) => Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                      vertical: 20.h,
                    ),
                    child: UserInfoContainerWidget(
                      profileEntity: data,
                      addressesEntity: AddressesEntity.fromJson(
                        data?.addresses?.first,
                      ),
                    ),
                  ),
                  error: (error) => Center(child: ErrorStateWidget()),
                  noInternet: () => Center(child: NoInternetStateWidget()),
                  noData: () => Center(child: NodataStateWidget()),
                  unauthorized: () => Center(
                    child: UnauthStateWidget(
                      lottieHeight: 150.h,
                      lottieWidth: 150.w,
                    ),
                  ),
                  loggedOut: () => SizedBox(),
                  logoutError: (String? message) => SizedBox(),
                  updated: (ProfileEntity? profileEntity) => ErrorStateWidget(),
                  updateError: (String? message) => ErrorStateWidget(),
                );
              },
            ),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(
                vertical: 20.h,
                horizontal: 20.w,
              ),
              child: Text(
                LocaleKeys.profilePage_myAccount.tr(),
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  fontFamily: FontConstants.fontFamily(context.locale),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: ElevatedButton(
                onPressed: () {
                  context.pushNamed(RoutesName.accountPage);
                },
                style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                  backgroundColor: WidgetStatePropertyAll(Colors.transparent),
                  shadowColor: WidgetStatePropertyAll(Colors.transparent),
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
                              Icons.account_circle_outlined,
                              color: Theme.of(
                                context,
                              ).textTheme.labelLarge?.color,
                              size: 24.r,
                            ),
                          ).asGlass(
                            frosted: true,
                            blurX: 28,
                            blurY: 28,
                            tintColor: Theme.of(
                              context,
                            ).colorScheme.primary.withValues(alpha: 1.0),
                            clipBorderRadius: BorderRadius.circular(12.r),
                            border: Theme.of(context).defaultBorderSide,
                          ),
                          SizedBox(
                            width: 220.w,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  LocaleKeys.profilePage_account.tr(),
                                  style: Theme.of(context).textTheme.labelLarge
                                      ?.copyWith(
                                        fontFamily: FontConstants.fontFamily(
                                          context.locale,
                                        ),
                                      ),
                                ),
                                Text(
                                  LocaleKeys
                                      .profilePage_manageYourAccountInformation
                                      .tr(),
                                  style: Theme.of(context).textTheme.labelSmall
                                      ?.copyWith(
                                        fontFamily: FontConstants.fontFamily(
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
                      blurX: 8,
                      blurY: 8,
                      tintColor: Theme.of(
                        context,
                      ).colorScheme.primary.withValues(alpha: 1.0),
                      clipBorderRadius: BorderRadius.circular(12.r),
                      border: Theme.of(context).defaultBorderSide,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
              child: ElevatedButton(
                onPressed: () {
                  context.pushNamed(RoutesName.settingPage);
                },
                style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                  backgroundColor: WidgetStatePropertyAll(Colors.transparent),
                  shadowColor: WidgetStatePropertyAll(Colors.transparent),
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
                              Icons.settings_outlined,
                              color: Theme.of(
                                context,
                              ).textTheme.labelLarge?.color,
                              size: 24.r,
                            ),
                          ).asGlass(
                            frosted: true,
                            blurX: 28,
                            blurY: 28,
                            tintColor: Theme.of(
                              context,
                            ).colorScheme.primary.withValues(alpha: 1.0),
                            clipBorderRadius: BorderRadius.circular(12.r),
                            border: Theme.of(context).defaultBorderSide,
                          ),
                          SizedBox(
                            width: 220.w,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  LocaleKeys.profilePage_settings.tr(),
                                  style: Theme.of(context).textTheme.labelLarge
                                      ?.copyWith(
                                        fontFamily: FontConstants.fontFamily(
                                          context.locale,
                                        ),
                                      ),
                                ),
                                Text(
                                  LocaleKeys.profilePage_languageAndTheme.tr(),
                                  style: Theme.of(context).textTheme.labelSmall
                                      ?.copyWith(
                                        fontFamily: FontConstants.fontFamily(
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
                      blurX: 8,
                      blurY: 8,
                      tintColor: Theme.of(
                        context,
                      ).colorScheme.primary.withValues(alpha: 1.0),
                      clipBorderRadius: BorderRadius.circular(12.r),
                      border: Theme.of(context).defaultBorderSide,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: ElevatedButton(
                onPressed: () async {
                  await showDialog(
                    context: context,
                    builder: (context) => Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 150.h,
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                          vertical: 16.h,
                        ),
                        decoration: BoxDecoration(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16.r),
                            topRight: Radius.circular(16.r),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Theme.of(context).shadowColor,
                              blurRadius: 2.r,
                              offset: Offset(-1, -2.h),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextButton(
                              onPressed: () {
                                context.pop();
                                context.pushNamed(RoutesName.ticketsPage);
                              },

                              child: Text(
                                LocaleKeys.profilePage_viewMyTickets.tr(),
                                style: Theme.of(context).textTheme.labelLarge
                                    ?.copyWith(
                                      fontFamily: FontConstants.fontFamily(
                                        context.locale,
                                      ),
                                    ),
                              ),
                            ),

                            TextButton(
                              onPressed: () {
                                context.pop();
                                context.pushNamed(RoutesName.createTicketPage);
                              },
                              child: Text(
                                LocaleKeys.profilePage_contactAsForAssistance
                                    .tr(),
                                style: Theme.of(context).textTheme.labelLarge
                                    ?.copyWith(
                                      fontFamily: FontConstants.fontFamily(
                                        context.locale,
                                      ),
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                  backgroundColor: WidgetStatePropertyAll(Colors.transparent),
                  shadowColor: WidgetStatePropertyAll(Colors.transparent),
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
                              Icons.help_outline,
                              color: Theme.of(
                                context,
                              ).textTheme.labelLarge?.color,
                              size: 24.r,
                            ),
                          ).asGlass(
                            frosted: true,
                            blurX: 28,
                            blurY: 28,
                            tintColor: Theme.of(
                              context,
                            ).colorScheme.primary.withValues(alpha: 1.0),
                            clipBorderRadius: BorderRadius.circular(12.r),
                            border: Theme.of(context).defaultBorderSide,
                          ),
                          SizedBox(
                            width: 220.w,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  LocaleKeys.profilePage_helpAndSupport.tr(),
                                  style: Theme.of(context).textTheme.labelLarge
                                      ?.copyWith(
                                        fontFamily: FontConstants.fontFamily(
                                          context.locale,
                                        ),
                                      ),
                                ),
                                Text(
                                  LocaleKeys.profilePage_contactAsForAssistance
                                      .tr(),
                                  style: Theme.of(context).textTheme.labelSmall
                                      ?.copyWith(
                                        fontFamily: FontConstants.fontFamily(
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
                      blurX: 8,
                      blurY: 8,
                      tintColor: Theme.of(
                        context,
                      ).colorScheme.primary.withValues(alpha: 1.0),
                      clipBorderRadius: BorderRadius.circular(12.r),
                      border: Theme.of(context).defaultBorderSide,
                    ),
              ),
            ),
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
                      context.read<GetProfileBloc>().add(
                        GetProfileEvent.getProfile(profileModel: profileModel),
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
                            GetProfileEvent.logout(profileModel: profileModel),
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
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                              ),
                              padding: EdgeInsets.symmetric(
                                vertical: 16.h,
                                horizontal: 16.w,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 4.w,
                                      vertical: 4.h,
                                    ),
                                    child: Icon(
                                      Icons.logout_outlined,
                                      color: ColorManager.backgroundColor,
                                      size: 24.r,
                                    ),
                                  ).asGlass(
                                    frosted: true,
                                    blurX: 28,
                                    blurY: 28,
                                    tintColor: Theme.of(context)
                                        .colorScheme
                                        .primary
                                        .withValues(alpha: 1.0),
                                    clipBorderRadius: BorderRadius.circular(
                                      12.r,
                                    ),
                                    border: Theme.of(context).defaultBorderSide,
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
                                                color: ColorManager
                                                    .backgroundColor,
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
                                                color: ColorManager
                                                    .backgroundColor,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: ColorManager.backgroundColor,
                                    size: 16.r,
                                  ),
                                ],
                              ),
                            ).asGlass(
                              frosted: true,
                              blurX: 8,
                              blurY: 8,
                              tintColor: Theme.of(context).primaryColor,
                              clipBorderRadius: BorderRadius.circular(12.r),
                              border: Theme.of(context).defaultBorderSide,
                            ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
