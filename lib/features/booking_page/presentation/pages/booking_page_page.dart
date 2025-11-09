import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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

class _BookingPagePageState extends State<BookingPagePage> {
  int initialIndex = 0;
  int? selectedIndex;
  GetBookingModel getBookingModel = GetBookingModel();
  @override
  void initState() {
    initialIndex = widget.initialIndex ?? 0;
    switch (initialIndex) {
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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      initialIndex: initialIndex,
      child: BlocProvider<GetBookingBloc>(
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
                    switch (value) {
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
                      GetBookingEventGetBookings(
                        getBookingModel: getBookingModel,
                      ),
                    );
                  },
                  tabs: [
                    Tab(
                      child: SizedBox(
                        child: Container(
                          height: 60.h,
                          padding: EdgeInsets.symmetric(horizontal: 12.w),
                          decoration: BoxDecoration(
                            color: Theme.of(
                              context,
                            ).colorScheme.primaryContainer,
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Center(
                            child: Text(LocaleKeys.bookingPage_all.tr()),
                          ),
                        ),
                      ),
                    ),

                    Tab(
                      child: Container(
                        height: 60.h,
                        padding: EdgeInsets.symmetric(horizontal: 12.w),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Center(
                          child: Text(LocaleKeys.bookingPage_accepted.tr()),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        height: 60.h,
                        padding: EdgeInsets.symmetric(horizontal: 12.w),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Center(
                          child: Text(LocaleKeys.bookingPage_inProgress.tr()),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        height: 60.h,
                        padding: EdgeInsets.symmetric(horizontal: 12.w),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Center(
                          child: Text(LocaleKeys.bookingPage_completed.tr()),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        height: 60.h,
                        padding: EdgeInsets.symmetric(horizontal: 12.w),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Center(
                          child: Text(LocaleKeys.bookingPage_pending.tr()),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        height: 60.h,
                        padding: EdgeInsets.symmetric(horizontal: 12.w),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Center(
                          child: Text(LocaleKeys.bookingPage_canceled.tr()),
                        ),
                      ),
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
      ),
    );
  }
}
