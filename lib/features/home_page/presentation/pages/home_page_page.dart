import 'package:easy_localization/easy_localization.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glass/glass.dart';
import 'package:hosta_provider/config/theme/app_theme.dart';
import 'package:hosta_provider/core/constants/font_constants.dart';
import 'package:hosta_provider/core/resource/charts/chart_model/line_chart_model.dart';

import 'package:hosta_provider/core/resource/main_page/main_page.dart';
import 'package:hosta_provider/features/home_page/presentation/widgets/squer_container_with_presse_widget.dart';
import 'package:hosta_provider/generated/locale_keys.g.dart';

import '../../../../core/resource/charts/line_charts/custom_line_chart.dart';

class HomePagePage extends StatefulWidget {
  const HomePagePage({super.key});

  @override
  State<HomePagePage> createState() => _HomePagePageState();
}

class _HomePagePageState extends State<HomePagePage> {
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
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
          ],
          automaticallyImplyLeading: false,
          leadingWidth: 200.w,
          leading: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 20.r,
                backgroundImage: AssetImage("assets/images/app-icon.png"),
              ),
              SizedBox(
                width: 120.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 120.w,
                      child: Text(
                        "ابراهيم سهيل",
                        style: Theme.of(context).textTheme.labelLarge,
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                      width: 120.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 50.w,
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                LocaleKeys.homePage_myRating,
                                textAlign: TextAlign.start,
                              ).tr(),
                            ),
                          ),
                          Container(
                            margin: EdgeInsetsDirectional.only(start: 12.w),
                            width: 50.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary,
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
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
        ).animate().slideX(duration: 500.ms),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.w, horizontal: 20.w),
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
                    info: "8",
                    backgroundColor: Theme.of(context).colorScheme.primary,
                  ),
                  SquerContainerWithPresseWidget(
                    title: LocaleKeys.homePage_daylyTotal.tr(),
                    info: "250,000",
                    backgroundColor: Theme.of(context).colorScheme.primary,
                  ),
                  SquerContainerWithPresseWidget(
                    title: LocaleKeys.homePage_monthlyBookings.tr(),
                    info: "25",
                    onPressed: () {},
                  ),
                  SquerContainerWithPresseWidget(
                    title: LocaleKeys.homePage_monthlyTotal.tr(),
                    info: "300,000,000",
                    onPressed: () {},
                  ),
                  SquerContainerWithPresseWidget(
                    title: LocaleKeys.homePage_currentBookings.tr(),
                    info: "25",
                    onPressed: () {},
                  ),
                  SquerContainerWithPresseWidget(
                    title: LocaleKeys.homePage_pendingBookings.tr(),
                    info: "25",
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.h),
            child:
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 12.h,
                  ),

                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsetsGeometry.zero,
                        child: Text(
                          LocaleKeys.homePage_annualStatistics.tr(),
                          style: Theme.of(context).textTheme.labelLarge
                              ?.copyWith(
                                fontFamily: FontConstants.fontFamily(
                                  context.locale,
                                ),
                              ),
                        ),
                      ),
                      CostumeLineChart.CustomLineChart(
                        containerWidth: 320.w,
                        minX: 0,
                        maxX: 12,
                        minY: 0,
                        maxY: 20,
                        containerHeight: 220.h,

                        title: LocaleKeys.homePage_annualStatistics.tr(),
                        barsInfo: [
                          LineChartModel(
                            color: Theme.of(context).colorScheme.primary,
                            spots: [
                              FlSpot(0, 3),
                              FlSpot(1, 1.5),
                              FlSpot(2, 4),
                              FlSpot(3, 3.5),
                              FlSpot(4, 5),
                              FlSpot(5, 4),
                              FlSpot(6, 6),
                              FlSpot(7, 5),
                              FlSpot(8, 7),
                              FlSpot(9, 6),
                              FlSpot(10, 8),
                              FlSpot(11, 20),
                            ],
                          ),
                        ],
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
      ),
    );
  }
}
