import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glass/glass.dart';
import 'package:hosta_provider/core/resource/color_manager.dart';
import '../../../../config/app/app_preferences.dart';
import '../../../../config/theme/app_theme.dart';
import '../../../../core/constants/font_constants.dart';
import '../../../../core/dependencies_injection.dart';
import '../../../../core/resource/main_page/main_page.dart';
import '../../../../core/util/helper/helper.dart';
import '../../../login_page/domain/entities/login_state_entity.dart';
import '../../data/models/get_booking_model.dart';
import '../bloc/get_booking_bloc.dart';
import 'booking_page_tap_page.dart';
import '../../../../generated/locale_keys.g.dart';

import '../../../../core/resource/custom_widget/snake_bar_widget/snake_bar_widget.dart';

class BookingPagePage extends StatefulWidget {
  final int? initialIndex;
  const BookingPagePage({super.key, this.initialIndex});

  @override
  State<BookingPagePage> createState() => _BookingPagePageState();
}

class _BookingPagePageState extends State<BookingPagePage>
    with SingleTickerProviderStateMixin {
  // String? acceptLanguage = "ar";
  GetBookingModel? getBookingModel = GetBookingModel(status: "");
  int initialIndex = 0;
  int? selectedIndex;
  TabController? tabController;

  // void _onTabIndexChanged(int index, {required BuildContext context}) {
  //   switch (index) {
  //     case 0:
  //       getBookingModel = GetBookingModel(status: "");
  //       break;
  //     case 1:
  //       getBookingModel = GetBookingModel(
  //         status: 'confirmed',
  //         acceptLanguage: Helper.getCountryCode(context),
  //       );
  //       break;
  //     case 2:
  //       getBookingModel = GetBookingModel(
  //         status: 'in_progress',
  //         acceptLanguage: Helper.getCountryCode(context),
  //       );
  //       break;
  //     case 3:
  //       getBookingModel = GetBookingModel(
  //         status: 'completed',
  //         acceptLanguage: Helper.getCountryCode(context),
  //       );
  //       break;
  //     case 4:
  //       getBookingModel = GetBookingModel(
  //         status: 'pending',
  //         acceptLanguage: Helper.getCountryCode(context),
  //       );
  //       break;
  //     case 5:
  //       getBookingModel = GetBookingModel(
  //         status: 'cancelled',
  //         acceptLanguage: Helper.getCountryCode(context),
  //       );
  //       break;
  //   }

  //   context.read<GetBookingBloc>().add(
  //     GetBookingEventGetBookings(getBookingModel: getBookingModel),
  //   );
  // }

  @override
  void initState() {
    super.initState();

    initialIndex = widget.initialIndex ?? 0;

    tabController = TabController(
      length: 7,
      vsync: this,
      initialIndex: initialIndex,
      animationDuration: Duration(milliseconds: 300),
    );

    // Listen to tab changes
    // tabController!.addListener(() {
    //   if (!tabController!.indexIsChanging) {
    //     selectedIndex = tabController!.index;
    //     _onTabIndexChanged(selectedIndex ?? 0, context: context);
    //   }
    // });

    // // Trigger the first page load manually
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   _onTabIndexChanged(initialIndex, context: context);
    // });
  }

  @override
  void didUpdateWidget(covariant BookingPagePage oldWidget) {
    getBookingModel = getBookingModel?.copyWith(
      acceptLanguage: Helper.getCountryCode(context),
    );
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MainPage(
      haveBottomBar: true,
      title: LocaleKeys.bookingPage_title.tr(),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: Builder(
          builder: (context) {
            return TabBar(
              labelStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
                fontFamily: FontConstants.fontFamily(context.locale),
                fontSize: 14.sp,
                color: ColorManager.backgroundColor,
              ),
              unselectedLabelStyle: Theme.of(context).textTheme.labelLarge
                  ?.copyWith(
                    fontFamily: FontConstants.fontFamily(context.locale),
                    fontSize: 14.sp,
                    color: ColorManager.backgroundColor,
                  ),

              controller: tabController,
              labelPadding: EdgeInsets.symmetric(
                horizontal: 4.w,
                vertical: 8.h,
              ),
              indicatorPadding: EdgeInsets.symmetric(horizontal: 4.w),
              textScaler: TextScaler.linear(1.25),
              isScrollable: true,
              padding: EdgeInsets.zero,
              physics: AlwaysScrollableScrollPhysics(),

              onTap: (value) {
                selectedIndex = value;
                setState(() {
                  getBookingModel = getBookingModel?.copyWith(
                    acceptLanguage: Helper.getCountryCode(context),
                  );
                });
              },
              tabs: [
                Tab(
                  child:
                      Container(
                        height: 60.h,
                        padding: EdgeInsets.symmetric(horizontal: 12.w),

                        child: Center(
                          child: Text(LocaleKeys.bookingPage_all.tr()),
                        ),
                      ).asGlass(
                        frosted: true,
                        blurX: 18,
                        blurY: 18,
                        tintColor: Theme.of(
                          context,
                        ).colorScheme.primary.withValues(alpha: 0.9),
                        clipBorderRadius: BorderRadius.circular(12.r),
                        border: Theme.of(context).defaultBorderSide,
                      ),
                ),

                Tab(
                  child: Container(
                    height: 60.h,
                    padding: EdgeInsets.symmetric(horizontal: 12.w),

                    child: Center(
                      child: Text(LocaleKeys.bookingPage_accepted.tr()),
                    ),
                  ),
                ).asGlass(
                  frosted: true,
                  blurX: 18,
                  blurY: 18,
                  tintColor: Theme.of(
                    context,
                  ).colorScheme.primary.withValues(alpha: 0.9),
                  clipBorderRadius: BorderRadius.circular(12.r),
                  border: Theme.of(context).defaultBorderSide,
                ),
                Tab(
                  child: Container(
                    height: 60.h,
                    padding: EdgeInsets.symmetric(horizontal: 12.w),

                    child: Center(
                      child: Text(LocaleKeys.bookingPage_inProgress.tr()),
                    ),
                  ),
                ).asGlass(
                  frosted: true,
                  blurX: 18,
                  blurY: 18,
                  tintColor: Theme.of(
                    context,
                  ).colorScheme.primary.withValues(alpha: 0.9),
                  clipBorderRadius: BorderRadius.circular(12.r),
                  border: Theme.of(context).defaultBorderSide,
                ),
                Tab(
                  child: Container(
                    height: 60.h,
                    padding: EdgeInsets.symmetric(horizontal: 12.w),

                    child: Center(
                      child: Text(LocaleKeys.bookingPage_completed.tr()),
                    ),
                  ),
                ).asGlass(
                  frosted: true,
                  blurX: 18,
                  blurY: 18,
                  tintColor: Theme.of(
                    context,
                  ).colorScheme.primary.withValues(alpha: 0.9),
                  clipBorderRadius: BorderRadius.circular(12.r),
                  border: Theme.of(context).defaultBorderSide,
                ),
                Tab(
                  child: Container(
                    height: 60.h,
                    padding: EdgeInsets.symmetric(horizontal: 12.w),

                    child: Center(
                      child: Text(LocaleKeys.bookingPage_pending.tr()),
                    ),
                  ),
                ).asGlass(
                  frosted: true,
                  blurX: 18,
                  blurY: 18,
                  tintColor: Theme.of(
                    context,
                  ).colorScheme.primary.withValues(alpha: 0.9),
                  clipBorderRadius: BorderRadius.circular(12.r),
                  border: Theme.of(context).defaultBorderSide,
                ),
                Tab(
                  child: Container(
                    height: 60.h,
                    padding: EdgeInsets.symmetric(horizontal: 12.w),

                    child: Center(
                      child: Text(LocaleKeys.bookingPage_rejected.tr()),
                    ),
                  ),
                ).asGlass(
                  frosted: true,
                  blurX: 18,
                  blurY: 18,
                  tintColor: Theme.of(
                    context,
                  ).colorScheme.primary.withValues(alpha: 0.9),
                  clipBorderRadius: BorderRadius.circular(12.r),
                  border: Theme.of(context).defaultBorderSide,
                ),
                Tab(
                  child: Container(
                    height: 60.h,
                    padding: EdgeInsets.symmetric(horizontal: 12.w),

                    child: Center(
                      child: Text(LocaleKeys.bookingPage_canceled.tr()),
                    ),
                  ),
                ).asGlass(
                  frosted: true,
                  blurX: 18,
                  blurY: 18,
                  tintColor: Theme.of(
                    context,
                  ).colorScheme.primary.withValues(alpha: 0.9),
                  clipBorderRadius: BorderRadius.circular(12.r),
                  border: Theme.of(context).defaultBorderSide,
                ),
              ],
            );
          },
        ),
      ),
      body: Builder(
        builder: (context) {
          getBookingModel = getBookingModel?.copyWith(
            acceptLanguage: Helper.getCountryCode(context),
          );
          return TabBarView(
            controller: tabController,

            children: [
              //all
              BookingPageTapPage(model: getBookingModel),

              //accepted
              BookingPageTapPage(
                model: getBookingModel?.copyWith(status: "confirmed"),
              ),
              //in progress
              BookingPageTapPage(
                model: getBookingModel?.copyWith(status: "in_progress"),
              ),
              //completed
              BookingPageTapPage(
                model: getBookingModel?.copyWith(status: "completed"),
              ),
              //pending
              BookingPageTapPage(
                model: getBookingModel?.copyWith(status: "pending"),
              ),
              //rejected
              BookingPageTapPage(
                model: getBookingModel?.copyWith(status: "rejected"),
              ),
              //canceled
              BookingPageTapPage(
                model: getBookingModel?.copyWith(status: "cancelled"),
              ),
            ],
          );
        },
      ),
    );
  }
}
