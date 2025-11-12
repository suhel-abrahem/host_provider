import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glass/glass.dart';
import 'package:hosta_provider/config/theme/app_theme.dart';
import 'package:hosta_provider/core/constants/font_constants.dart';
import 'package:hosta_provider/core/dependencies_injection.dart';
import 'package:hosta_provider/core/extensions/screen_size.dart';
import 'package:hosta_provider/core/resource/main_page/main_page.dart';
import 'package:hosta_provider/core/util/helper/helper.dart';
import 'package:hosta_provider/features/booking_page/data/models/get_booking_model.dart';
import 'package:hosta_provider/features/booking_page/presentation/bloc/get_booking_bloc.dart';
import 'package:hosta_provider/features/booking_page/presentation/pages/booking_page_tap_page.dart';
import 'package:hosta_provider/generated/locale_keys.g.dart';

import '../../../../core/resource/custom_widget/snake_bar_widget/snake_bar_widget.dart';

class BookingPagePage extends StatefulWidget {
  final int? initialIndex;
  const BookingPagePage({super.key, this.initialIndex});

  @override
  State<BookingPagePage> createState() => _BookingPagePageState();
}

class _BookingPagePageState extends State<BookingPagePage>
    with SingleTickerProviderStateMixin {
  int initialIndex = 0;
  int? selectedIndex;
  TabController? tabController;
  GetBookingModel getBookingModel = GetBookingModel();
  void _onTabIndexChanged(int index, {required BuildContext context}) {
    switch (index) {
      case 0:
        getBookingModel = GetBookingModel(status: "");
        break;
      case 1:
        getBookingModel = GetBookingModel(
          status: 'confirmed',
          acceptLanguage: Helper.getCountryCode(context),
        );
        break;
      case 2:
        getBookingModel = GetBookingModel(
          status: 'in_progress',
          acceptLanguage: Helper.getCountryCode(context),
        );
        break;
      case 3:
        getBookingModel = GetBookingModel(
          status: 'completed',
          acceptLanguage: Helper.getCountryCode(context),
        );
        break;
      case 4:
        getBookingModel = GetBookingModel(
          status: 'pending',
          acceptLanguage: Helper.getCountryCode(context),
        );
        break;
      case 5:
        getBookingModel = GetBookingModel(
          status: 'cancelled',
          acceptLanguage: Helper.getCountryCode(context),
        );
        break;
    }

    context.read<GetBookingBloc>().add(
      GetBookingEventGetBookings(getBookingModel: getBookingModel),
    );
  }

  @override
  void initState() {
    tabController = TabController(
      length: 6,
      vsync: this,
      initialIndex: widget.initialIndex ?? 0,
      animationDuration: Duration(milliseconds: 300),
    );

    super.initState();
  }

  @override
  void dispose() {
    tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GetBookingBloc>(
      create: (context) =>
          getItInstance<GetBookingBloc>()..add(GetBookingEventStarted()),
      child: MainPage(
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
                  color: Theme.of(context).colorScheme.primary,
                ),
                unselectedLabelStyle: Theme.of(context).textTheme.labelLarge
                    ?.copyWith(
                      fontFamily: FontConstants.fontFamily(context.locale),
                      fontSize: 14.sp,
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
                  _onTabIndexChanged(selectedIndex ?? 0, context: context);
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
                          blurX: 8,
                          blurY: 8,
                          tintColor: Theme.of(
                            context,
                          ).colorScheme.primaryContainer.withValues(alpha: 0.9),
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
                    blurX: 8,
                    blurY: 8,
                    tintColor: Theme.of(
                      context,
                    ).colorScheme.primaryContainer.withValues(alpha: 0.9),
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
                    blurX: 8,
                    blurY: 8,
                    tintColor: Theme.of(
                      context,
                    ).colorScheme.primaryContainer.withValues(alpha: 0.9),
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
                    blurX: 8,
                    blurY: 8,
                    tintColor: Theme.of(
                      context,
                    ).colorScheme.primaryContainer.withValues(alpha: 0.9),
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
                    blurX: 8,
                    blurY: 8,
                    tintColor: Theme.of(
                      context,
                    ).colorScheme.primaryContainer.withValues(alpha: 0.9),
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
                    blurX: 8,
                    blurY: 8,
                    tintColor: Theme.of(
                      context,
                    ).colorScheme.primaryContainer.withValues(alpha: 0.9),
                    clipBorderRadius: BorderRadius.circular(12.r),
                    border: Theme.of(context).defaultBorderSide,
                  ),
                ],
              );
            },
          ),
        ),
        body: BlocListener<GetBookingBloc, GetBookingState>(
          listener: (context, state) {
            if (state is GetBookingStateError) {
              showMessage(
                context: context,
                message: LocaleKeys.common_anErrorHasOccurs.tr(),
              );
            } else if (state is GetBookingStateInitial) {
              context.read<GetBookingBloc>().add(
                GetBookingEventGetBookings(getBookingModel: getBookingModel),
              );
            }
          },
          child: TabBarView(
            controller: tabController,
            physics: NeverScrollableScrollPhysics(),
            children: [
              //all
              BookingPageTapPage(),

              //accepted
              BookingPageTapPage(),
              //in progress
              BookingPageTapPage(),
              //completed
              BookingPageTapPage(),
              //pending
              BookingPageTapPage(),
              //canceled
              BookingPageTapPage(),
            ],
          ),
        ),
      ),
    );
  }
}
