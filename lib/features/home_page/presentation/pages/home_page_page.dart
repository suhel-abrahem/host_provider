import 'package:easy_localization/easy_localization.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glass/glass.dart';
import 'package:go_router/go_router.dart';
import '../../../../config/route/routes_manager.dart';
import '../../../../config/theme/app_theme.dart';
import '../../../../core/constants/font_constants.dart';
import '../../../../core/constants/language_constant.dart';
import '../../../../core/resource/charts/chart_model/line_chart_model.dart';
import '../../../../core/resource/common_state_widget/error_state_widget.dart';
import '../../../../core/resource/common_state_widget/no_data_state_widget.dart';
import '../../../../core/resource/common_state_widget/no_internet_state_widget.dart';
import '../../../../core/resource/custom_widget/snake_bar_widget/snake_bar_widget.dart';

import '../../../../core/resource/main_page/main_page.dart';
import '../../../../core/util/helper/helper.dart';
import '../../domain/entities/home_page_entity.dart';
import '../bloc/home_page_bloc.dart';
import '../widgets/squer_container_with_presse_widget.dart';
import '../../../login_page/domain/entities/login_state_entity.dart';
import '../../../profile_page/data/models/profile_model.dart';
import '../../../profile_page/domain/entities/profile_entity.dart';
import '../../../profile_page/presentation/bloc/get_profile_bloc.dart';
import '../../../../generated/locale_keys.g.dart';

import '../../../../config/app/app_preferences.dart';
import '../../../../core/dependencies_injection.dart';
import '../../../../core/resource/charts/line_charts/custom_line_chart.dart';
import '../../../../core/resource/image_widget.dart';
import '../../data/models/home_page_model.dart';

class HomePagePage extends StatefulWidget {
  const HomePagePage({super.key});

  @override
  State<HomePagePage> createState() => _HomePagePageState();
}

class _HomePagePageState extends State<HomePagePage> {
  HomePageModel? model = HomePageModel();
  HomePageEntity? homePageEntity = HomePageEntity();
  List<FlSpot> totalBookingsSpots = [];
  List<FlSpot> totalRevenueSpots = [];
  bool isTotalRevenue = false;
  ProfileModel profileModel = ProfileModel();
  ProfileEntity? profileEntity = ProfileEntity();
  bool isProfileDataLoading = true;
  @override
  void didChangeDependencies() {
    model = model?.copyWith(acceptLanguage: Helper.getCountryCode(context));
    profileModel = profileModel.copyWith(
      acceptLanguage: Helper.getCountryCode(context),
    );
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant HomePagePage oldWidget) {
    model = model?.copyWith(acceptLanguage: Helper.getCountryCode(context));
    profileModel = profileModel.copyWith(
      acceptLanguage: Helper.getCountryCode(context),
    );
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return MainPage(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: AppBar(
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none,
                size: 24.sp,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(end: 8.w),
              child: SizedBox(
                width: 36.w,
                height: 36.h,
                child: Center(
                  child: Builder(
                    builder: (builderContext) {
                      return ElevatedButton(
                        style: Theme.of(context).elevatedButtonTheme.style
                            ?.copyWith(
                              backgroundColor: WidgetStatePropertyAll(
                                Colors.transparent,
                              ),
                              shape: WidgetStatePropertyAll(
                                CircleBorder(eccentricity: 0),
                              ),
                              padding: WidgetStatePropertyAll(
                                EdgeInsets.all(0),
                              ),
                              shadowColor: WidgetStatePropertyAll(
                                Colors.transparent,
                              ),
                            ),
                        onPressed: () {
                          Scaffold.of(builderContext).openDrawer();
                        },
                        child: Icon(
                          Icons.menu,
                          size: 28.sp,
                          color: Theme.of(context).textTheme.labelLarge?.color,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
          automaticallyImplyLeading: false,
          leadingWidth: 210.w,

          leading: SizedBox(
            height: 60.h,
            child: BlocProvider<GetProfileBloc>(
              create: (context) => getItInstance<GetProfileBloc>()
                ..add(GetProfileEvent.getProfile(profileModel: profileModel)),
              child: BlocListener<GetProfileBloc, GetProfileState>(
                listener: (context, state) {
                  if (state is GetProfileStateLoading) {
                    setState(() {
                      isProfileDataLoading = true;
                    });
                  } else if (state is GetProfileStateError) {
                    showMessage(
                      context: context,
                      message: LocaleKeys.common_error.tr(),
                    );
                    setState(() {
                      isProfileDataLoading = false;
                    });
                  } else if (state is GetProfileStateNoInternet) {
                    showMessage(
                      context: context,
                      message: LocaleKeys.common_noInternetPullDown.tr(),
                    );
                    setState(() {
                      isProfileDataLoading = false;
                    });
                  } else if (state is GetProfileStateUnauthorized) {
                    getItInstance<AppPreferences>().setUserInfo(
                      loginStateEntity: LoginStateEntity(),
                    );
                    setState(() {
                      isProfileDataLoading = false;
                    });
                    context.pushNamed(RoutesName.loginPage);
                  } else if (state is GetProfileStateLoaded) {
                    setState(() {
                      profileEntity = state.profileEntity;
                      isProfileDataLoading = false;
                    });
                  }
                },
                child: SizedBox(
                  height: 70.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      isProfileDataLoading
                          ? Padding(
                              padding: EdgeInsets.only(top: 8.h),
                              child: CircularProgressIndicator(),
                            )
                          : Container(
                              margin: EdgeInsets.only(top: 8.h),
                              width: 50.w,

                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(shape: BoxShape.circle),
                              child: ImageWidget(
                                boxFit: BoxFit.cover,
                                errorWidget: Icon(
                                  Icons.account_circle,
                                  size: 40.sp,
                                  color: Theme.of(
                                    context,
                                  ).textTheme.labelLarge?.color,
                                ),
                                imageUrl: profileEntity?.avatar ?? "",
                              ),
                            ),
                      SizedBox(
                        width: 130.w,

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 2.h),
                              child: SizedBox(
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: isProfileDataLoading
                                      ? SizedBox(
                                          width: 70.w,
                                          height: 10.h,
                                          child: LinearProgressIndicator(
                                            color: Theme.of(
                                              context,
                                            ).colorScheme.primary,
                                            backgroundColor: Theme.of(context)
                                                .colorScheme
                                                .onSurface
                                                .withValues(alpha: 0.1),
                                          ),
                                        )
                                      : Text(
                                          profileEntity?.name ?? "",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge
                                              ?.copyWith(
                                                fontFamily:
                                                    FontConstants.fontFamily(
                                                      context.locale,
                                                    ),
                                              ),
                                          textAlign: TextAlign.start,
                                        ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                              width: 130.w,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Center(
                                    child: SizedBox(
                                      width:
                                          context.locale ==
                                              LanguageConstant.arLoacle
                                          ? 30.w
                                          : 70.w,
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional.centerStart,
                                        child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: Text(
                                            LocaleKeys.homePage_myRating,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelSmall
                                                ?.copyWith(
                                                  fontFamily:
                                                      FontConstants.fontFamily(
                                                        context.locale,
                                                      ),
                                                ),
                                            textAlign: TextAlign.center,
                                          ).tr(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsetsDirectional.only(
                                      start: 8.w,
                                    ),
                                    width: 50.w,
                                    height: 40.h,
                                    decoration: BoxDecoration(
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.primary,
                                      borderRadius: BorderRadius.circular(12.r),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Align(
                                          alignment: AlignmentGeometry.center,
                                          child: SizedBox(
                                            width: 20.w,
                                            child: FittedBox(
                                              fit: BoxFit.scaleDown,
                                              child: Text(
                                                "4.5",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelLarge
                                                    ?.copyWith(
                                                      fontFamily:
                                                          FontConstants.fontFamily(
                                                            context.locale,
                                                          ),
                                                      color: Theme.of(
                                                        context,
                                                      ).colorScheme.onSurface,
                                                    ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 12.sp,
                                          color: Theme.of(
                                            context,
                                          ).colorScheme.onSurface,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ).animate().slideX(duration: 500.ms),
      ),
      body: BlocProvider<HomePageBloc>(
        create: (context) =>
            getItInstance<HomePageBloc>()
              ..add(HomePageEvent.fetchHomePageData(model: model)),
        child: BlocListener<HomePageBloc, HomePageState>(
          listener: (context, state) {
            if (state is HomePageStateError) {
              showMessage(
                context: context,
                message: LocaleKeys.common_error.tr(),
              );
              homePageEntity = HomePageEntity();
              totalBookingsSpots = [];
            } else if (state is HomePageStateNoInternet) {
              showMessage(
                context: context,
                message: LocaleKeys.common_noInternetPullDown.tr(),
              );
              homePageEntity = HomePageEntity();
              totalBookingsSpots = [];
            } else if (state is HomePageStateUnauthenticated) {
              getItInstance<AppPreferences>().setUserInfo(
                loginStateEntity: LoginStateEntity(),
              );
            } else if (state is HomePageStateLoaded) {
              homePageEntity = state.data;
              totalBookingsSpots = [];
            }
          },
          child: BlocBuilder<HomePageBloc, HomePageState>(
            builder: (context, state) {
              return ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 20.w,
                      horizontal: 20.w,
                    ),
                    child: SizedBox(
                      height: 402.h,

                      child: GridView(
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 20.h,
                          crossAxisCount: 2,
                          crossAxisSpacing: 10.w,
                          mainAxisExtent: 114.h,
                        ),
                        children: [
                          SquerContainerWithPresseWidget(
                            title: LocaleKeys.homePage_daylyBookings.tr(),
                            info:
                                homePageEntity?.today_bookings?.toString() ??
                                "",
                            backgroundColor: Theme.of(
                              context,
                            ).colorScheme.primary,
                          ),
                          SquerContainerWithPresseWidget(
                            title: LocaleKeys.homePage_daylyTotal.tr(),
                            info: Helper.formatPrice(
                              homePageEntity?.completed_revenue,
                            ),
                            backgroundColor: Theme.of(
                              context,
                            ).colorScheme.primary,
                          ),
                          SquerContainerWithPresseWidget(
                            title: LocaleKeys.homePage_monthlyBookings.tr(),
                            info:
                                homePageEntity?.current_month_bookings
                                    ?.toString() ??
                                "",
                          ),
                          SquerContainerWithPresseWidget(
                            title: LocaleKeys.homePage_monthlyTotal.tr(),
                            info: Helper.formatPrice(
                              homePageEntity?.current_month_revenue,
                            ),
                          ),
                          SquerContainerWithPresseWidget(
                            title: LocaleKeys.homePage_currentBookings.tr(),
                            info:
                                homePageEntity?.in_progress_bookings
                                    ?.toString() ??
                                "",
                            onPressed: () {
                              context.pushNamed(
                                RoutesName.bookingPage,
                                pathParameters: {"pageIndex": "2"},
                              );
                            },
                          ),
                          SquerContainerWithPresseWidget(
                            title: LocaleKeys.homePage_pendingBookings.tr(),
                            info:
                                homePageEntity?.pending_bookings?.toString() ??
                                "",
                            onPressed: () {
                              context.pushNamed(
                                RoutesName.bookingPage,
                                pathParameters: {"pageIndex": "4"},
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.w,
                      right: 20.w,
                      bottom: 20.h,
                    ),
                    child:
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.w,
                            vertical: 12.h,
                          ),

                          child: Column(
                            children: [
                              Text(
                                LocaleKeys.homePage_annualStatistics.tr(),
                                style: Theme.of(context).textTheme.labelLarge
                                    ?.copyWith(
                                      fontFamily: FontConstants.fontFamily(
                                        context.locale,
                                      ),
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsetsGeometry.only(
                                  bottom: 12.h,
                                  top: 0.h,
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.only(
                                        end: 4.w,
                                      ),

                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          LocaleKeys.homePage_bookings.tr(),
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
                                      ),
                                    ),
                                    Switch.adaptive(
                                      value: isTotalRevenue,
                                      onChanged: (newState) {
                                        setState(() {
                                          isTotalRevenue = newState;
                                        });
                                      },
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.only(
                                        start: 4.w,
                                      ),
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          LocaleKeys.homePage_revenue.tr(),
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
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              BlocBuilder<HomePageBloc, HomePageState>(
                                builder: (context, state) {
                                  return state.when(
                                    initial: () => ErrorStateWidget(),
                                    loading: () => Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                    loaded: (data) {
                                      totalBookingsSpots = [];
                                      totalRevenueSpots = [];
                                      homePageEntity?.yearly_stats?.forEach((
                                        action,
                                      ) {
                                        totalBookingsSpots.add(
                                          FlSpot(
                                            (Helper.monthNumberFromName(
                                                  action["month_name"],
                                                )) ??
                                                0,
                                            action["total_bookings"]
                                                    ?.toDouble() ??
                                                0.0,
                                          ),
                                        );
                                        totalRevenueSpots.add(
                                          FlSpot(
                                            (Helper.monthNumberFromName(
                                                  action["month_name"],
                                                )) ??
                                                0,
                                            action["total_revenue"]
                                                    ?.toDouble() ??
                                                0.0,
                                          ),
                                        );
                                      });
                                      return AnimatedSwitcher(
                                        duration: const Duration(
                                          milliseconds: 300,
                                        ),
                                        child: CostumeLineChart.CustomLineChart(
                                          key: ValueKey(isTotalRevenue),
                                          containerWidth: 320.w,
                                          minX: 0,
                                          maxX: 12,
                                          minY: 0,

                                          containerHeight: 220.h,

                                          title: LocaleKeys
                                              .homePage_annualStatistics
                                              .tr(),
                                          barsInfo: [
                                            if (!isTotalRevenue)
                                              LineChartModel(
                                                color: Colors.yellowAccent,
                                                spots: totalBookingsSpots,
                                              )
                                            else
                                              LineChartModel(
                                                color: Colors.greenAccent,
                                                spots: totalRevenueSpots,
                                              ),
                                          ],
                                        ),
                                      );
                                    },
                                    error: (error) => ErrorStateWidget(),
                                    noData: () => NodataStateWidget(),
                                    noInternet: () => NoInternetStateWidget(),
                                    unauthenticated: () => ErrorStateWidget(),
                                  );
                                },
                              ),
                            ],
                          ),
                        ).asGlass(
                          frosted: true,
                          blurX: 38,
                          blurY: 38,
                          tintColor: Theme.of(
                            context,
                          ).colorScheme.primaryContainer.withValues(alpha: 1.0),
                          clipBorderRadius: BorderRadius.circular(12.r),
                          border: Theme.of(context).defaultBorderSide,
                        ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
