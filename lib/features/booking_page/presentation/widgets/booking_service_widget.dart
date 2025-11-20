import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glass/glass.dart';
import 'package:go_router/go_router.dart';
import 'package:hosta_provider/config/theme/app_theme.dart';
import 'package:hosta_provider/core/constants/font_constants.dart';
import 'package:hosta_provider/core/dependencies_injection.dart';
import 'package:hosta_provider/core/resource/custom_widget/custom_input_field/custom_input_field.dart';
import 'package:hosta_provider/core/resource/custom_widget/snake_bar_widget/snake_bar_widget.dart';
import 'package:hosta_provider/core/util/helper/helper.dart';
import 'package:hosta_provider/features/booking_page/data/models/get_booking_model.dart';
import 'package:hosta_provider/features/booking_page/domain/entities/booking_entity.dart';
import 'package:hosta_provider/generated/locale_keys.g.dart';

import '../../../../config/route/routes_manager.dart';
import '../bloc/set_booking_bloc.dart';

class BookingServiceWidget extends StatefulWidget {
  final BookingEntity? bookingEntity;
  const BookingServiceWidget({super.key, this.bookingEntity});

  @override
  State<BookingServiceWidget> createState() => _BookingServiceWidgetState();
}

class _BookingServiceWidgetState extends State<BookingServiceWidget> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.pushNamed(
          RoutesName.serviceInfoPage,
          pathParameters: {
            "serviceId": widget.bookingEntity?.id.toString() ?? "",
          },
        );
      },
      style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
        padding: WidgetStatePropertyAll(EdgeInsets.zero),
        backgroundColor: WidgetStatePropertyAll(Colors.transparent),
        shadowColor: WidgetStatePropertyAll(Colors.transparent),
      ),
      child:
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
            height: 220.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.bookingEntity?.booking_number.toString() ?? "",
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        fontFamily: FontConstants.fontFamily(context.locale),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.w,
                        vertical: 4.h,
                      ),
                      decoration: BoxDecoration(
                        color: Helper.getColorByStatus(
                          widget.bookingEntity?.status,
                          context,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        widget.bookingEntity?.status ?? "",
                        style: Theme.of(context).textTheme.labelMedium
                            ?.copyWith(
                              fontFamily: FontConstants.fontFamily(
                                context.locale,
                              ),
                            ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.bookingEntity?.customer?["name"] ?? "",
                          style: Theme.of(context).textTheme.headlineMedium
                              ?.copyWith(
                                fontFamily: FontConstants.fontFamily(
                                  context.locale,
                                ),
                              ),
                        ),
                        Text(
                          widget.bookingEntity?.service?["name"] ?? "",
                          style: Theme.of(context).textTheme.labelMedium
                              ?.copyWith(
                                fontFamily: FontConstants.fontFamily(
                                  context.locale,
                                ),
                              ),
                        ),
                      ],
                    ),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        "${widget.bookingEntity?.total_price ?? 0} ${LocaleKeys.myServicesPage_iqd.tr()}",
                        style: Theme.of(context).textTheme.headlineMedium
                            ?.copyWith(
                              fontFamily: FontConstants.fontFamily(
                                context.locale,
                              ),
                            ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.only(end: 8.w),
                      child: Icon(
                        Icons.calendar_month_outlined,
                        color: Theme.of(context).textTheme.labelSmall?.color,
                      ),
                    ),
                    Text(
                      "${LocaleKeys.bookingPage_startTime.tr()}: ",
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        fontFamily: FontConstants.fontFamily(context.locale),
                      ),
                    ),
                    Text(
                      DateFormat('yyyy-MM-dd - hh:mm').format(
                        DateTime.parse(widget.bookingEntity?.start_time ?? ""),
                      ),
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        fontFamily: FontConstants.fontFamily(context.locale),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.only(end: 8.w),
                      child: Icon(
                        Icons.calendar_month_outlined,
                        color: Theme.of(context).textTheme.labelSmall?.color,
                      ),
                    ),
                    Text(
                      "${LocaleKeys.bookingPage_endTime.tr()}: ",
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        fontFamily: FontConstants.fontFamily(context.locale),
                      ),
                    ),
                    Text(
                      DateFormat('yyyy-MM-dd - hh:mm').format(
                        DateTime.parse(widget.bookingEntity?.end_time ?? ""),
                      ),
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        fontFamily: FontConstants.fontFamily(context.locale),
                      ),
                    ),
                  ],
                ),
                BlocProvider<SetBookingBloc>(
                  create: (context) =>
                      getItInstance<SetBookingBloc>()
                        ..add(SetBookingEvent.started()),
                  child: BlocListener<SetBookingBloc, SetBookingState>(
                    listener: (context, state) {
                      state.when(
                        initial: () {},
                        loading: () {},
                        loaded: (bookings) {
                          showMessage(
                            message: LocaleKeys.common_success.tr(),
                            context: context,
                          );
                          context.pushNamed(
                            RoutesName.bookingPage,
                            pathParameters: {"pageIndex": "0"},
                          );
                        },
                        error: () {
                          showMessage(
                            message: LocaleKeys.common_success.tr(),
                            context: context,
                          );
                        },
                        unauthenticated: () {
                          showMessage(
                            message: LocaleKeys.common_success.tr(),
                            context: context,
                          );
                        },
                        noData: () {},
                        noInternet: () {
                          showMessage(
                            message: LocaleKeys.common_noInternetPullDown.tr(),
                            context: context,
                          );
                        },
                      );
                    },
                    child: Builder(
                      builder: (context) {
                        return switch (widget.bookingEntity?.status) {
                          "pending" => Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(height: 8.h),
                              SizedBox(
                                width: 145.w,
                                height: 40.h,
                                child: ElevatedButton(
                                  onPressed: () {
                                    context.read<SetBookingBloc>().add(
                                      SetBookingEvent.setBookings(
                                        getBookingModel: GetBookingModel(
                                          id: widget.bookingEntity?.id
                                              .toString(),
                                          status: "confirm",
                                        ),
                                      ),
                                    );
                                  },
                                  style: Theme.of(context)
                                      .elevatedButtonTheme
                                      .style
                                      ?.copyWith(
                                        padding:
                                            WidgetStateProperty.resolveWith((
                                              callback,
                                            ) {
                                              if (callback.contains(
                                                WidgetState.pressed,
                                              )) {
                                                return EdgeInsets.symmetric(
                                                  vertical: 12.h,
                                                );
                                              }
                                              return EdgeInsets.zero;
                                            }),
                                      ),
                                  child: Text(
                                    LocaleKeys.bookingPage_acceptBooking.tr(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge
                                        ?.copyWith(
                                          fontFamily: FontConstants.fontFamily(
                                            context.locale,
                                          ),
                                          fontSize: 16.sp,
                                        ),
                                  ),
                                ),
                              ),

                              SizedBox(
                                width: 145.w,
                                height: 40.h,
                                child: ElevatedButton(
                                  onPressed: () {
                                    context.read<SetBookingBloc>().add(
                                      SetBookingEvent.setBookings(
                                        getBookingModel: GetBookingModel(
                                          id: widget.bookingEntity?.id
                                              .toString(),
                                          status: "reject",
                                        ),
                                      ),
                                    );
                                  },
                                  style: Theme.of(context)
                                      .elevatedButtonTheme
                                      .style
                                      ?.copyWith(
                                        backgroundColor: WidgetStatePropertyAll(
                                          Theme.of(context).colorScheme.error,
                                        ),
                                        padding:
                                            WidgetStateProperty.resolveWith((
                                              callback,
                                            ) {
                                              if (callback.contains(
                                                WidgetState.pressed,
                                              )) {
                                                return EdgeInsets.symmetric(
                                                  vertical: 12.h,
                                                );
                                              }
                                              return EdgeInsets.zero;
                                            }),
                                      ),
                                  child: Text(
                                    LocaleKeys.bookingPage_rejectBooking.tr(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge
                                        ?.copyWith(
                                          fontFamily: FontConstants.fontFamily(
                                            context.locale,
                                          ),
                                          fontSize: 16.sp,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          "confirmed" => Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                height: 40.h,
                                width: 145.w,
                                child: ElevatedButton(
                                  onPressed: () {
                                    context.read<SetBookingBloc>().add(
                                      SetBookingEvent.setBookings(
                                        getBookingModel: GetBookingModel(
                                          id: widget.bookingEntity?.id
                                              .toString(),
                                          status: "start",
                                        ),
                                      ),
                                    );
                                  },
                                  style: Theme.of(context)
                                      .elevatedButtonTheme
                                      .style
                                      ?.copyWith(
                                        padding:
                                            WidgetStateProperty.resolveWith((
                                              callback,
                                            ) {
                                              if (callback.contains(
                                                WidgetState.pressed,
                                              )) {
                                                return EdgeInsets.symmetric(
                                                  vertical: 12.h,
                                                );
                                              }
                                              return EdgeInsets.zero;
                                            }),
                                        backgroundColor: WidgetStatePropertyAll(
                                          Helper.getColorByStatus(
                                            "confirmed",
                                            context,
                                          )!,
                                        ),
                                      ),
                                  child: Center(
                                    child: Text(
                                      LocaleKeys.bookingPage_startService.tr(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge
                                          ?.copyWith(
                                            fontFamily:
                                                FontConstants.fontFamily(
                                                  context.locale,
                                                ),
                                            fontSize: 16.sp,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 40.h,
                                width: 145.w,
                                child: Builder(
                                  builder: (buildContext) {
                                    return ElevatedButton(
                                      onPressed: () {
                                        String? reason;
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title: Text(
                                                LocaleKeys
                                                    .bookingPage_rejectBooking
                                                    .tr(),
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
                                              content: SizedBox(
                                                height: 250.h,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Text(
                                                      LocaleKeys
                                                          .bookingPage_areYouSureYouWantToRejectThisBooking
                                                          .tr(),
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .labelSmall
                                                          ?.copyWith(
                                                            fontFamily:
                                                                FontConstants.fontFamily(
                                                                  context
                                                                      .locale,
                                                                ),
                                                          ),
                                                    ),
                                                    SizedBox(
                                                      height: 150.h,
                                                      child: Form(
                                                        key: formKey,
                                                        autovalidateMode:
                                                            AutovalidateMode
                                                                .onUserInteraction,
                                                        child: CustomInputField(
                                                          label: LocaleKeys
                                                              .bookingPage_rejectReason
                                                              .tr(),
                                                          height: 150.h,
                                                          maxLines: 5,
                                                          onChanged: (value) =>
                                                              reason = value,
                                                          validator: (value) {
                                                            if (value == null ||
                                                                value.isEmpty) {
                                                              return LocaleKeys
                                                                  .bookingPage_pleaseProvideAReasonForRejection
                                                                  .tr();
                                                            }
                                                            return null;
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              actions: [
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Text(
                                                    LocaleKeys.common_cancel
                                                        .tr(),
                                                  ),
                                                ),
                                                TextButton(
                                                  onPressed: () {
                                                    if (((formKey.currentState
                                                            ?.validate()) ??
                                                        false)) {
                                                      buildContext.read<SetBookingBloc>().add(
                                                        SetBookingEvent.setBookings(
                                                          getBookingModel:
                                                              GetBookingModel(
                                                                reason: reason,
                                                                id: widget
                                                                    .bookingEntity
                                                                    ?.id
                                                                    .toString(),
                                                                status:
                                                                    "cancel",
                                                              ),
                                                        ),
                                                      );
                                                      Navigator.of(
                                                        context,
                                                      ).pop();
                                                    }
                                                  },
                                                  child: Text(
                                                    LocaleKeys.common_save.tr(),
                                                  ),
                                                ),
                                              ],
                                              backgroundColor: Theme.of(context)
                                                  .colorScheme
                                                  .primaryContainer
                                                  .withValues(alpha: 0.8),
                                            );
                                          },
                                        );
                                        print(" Reject reason: $reason ");
                                      },
                                      style: Theme.of(context)
                                          .elevatedButtonTheme
                                          .style
                                          ?.copyWith(
                                            padding:
                                                WidgetStateProperty.resolveWith((
                                                  callback,
                                                ) {
                                                  if (callback.contains(
                                                    WidgetState.pressed,
                                                  )) {
                                                    return EdgeInsets.symmetric(
                                                      vertical: 12.h,
                                                    );
                                                  }
                                                  return EdgeInsets.zero;
                                                }),
                                            backgroundColor:
                                                WidgetStatePropertyAll(
                                                  Helper.getColorByStatus(
                                                    "rejected",
                                                    context,
                                                  )!,
                                                ),
                                          ),
                                      child: Center(
                                        child: Text(
                                          LocaleKeys.bookingPage_rejectBooking
                                              .tr(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge
                                              ?.copyWith(
                                                fontFamily:
                                                    FontConstants.fontFamily(
                                                      context.locale,
                                                    ),
                                                fontSize: 16.sp,
                                              ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                          "in_progress" => SizedBox(
                            height: 40.h,
                            child: ElevatedButton(
                              onPressed: () {
                                context.read<SetBookingBloc>().add(
                                  SetBookingEvent.setBookings(
                                    getBookingModel: GetBookingModel(
                                      id: widget.bookingEntity?.id.toString(),
                                      status: "complete",
                                    ),
                                  ),
                                );
                              },
                              style: Theme.of(context).elevatedButtonTheme.style
                                  ?.copyWith(
                                    backgroundColor: WidgetStatePropertyAll(
                                      Helper.getColorByStatus(
                                        "in_progress",
                                        context,
                                      )!,
                                    ),
                                    padding: WidgetStateProperty.resolveWith((
                                      callback,
                                    ) {
                                      if (callback.contains(
                                        WidgetState.pressed,
                                      )) {
                                        return EdgeInsets.symmetric(
                                          vertical: 12.h,
                                        );
                                      }
                                      return EdgeInsets.zero;
                                    }),
                                  ),
                              child: Center(
                                child: Text(
                                  LocaleKeys.bookingPage_finishService.tr(),
                                  style: Theme.of(context).textTheme.labelLarge
                                      ?.copyWith(
                                        fontFamily: FontConstants.fontFamily(
                                          context.locale,
                                        ),
                                      ),
                                ),
                              ),
                            ),
                          ),
                          "completed" => SizedBox(),
                          "rejected" => SizedBox(),
                          _ => SizedBox(height: 0.h),
                        };
                      },
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
            ).colorScheme.primaryContainer.withValues(alpha: 0.9),
            clipBorderRadius: BorderRadius.circular(12.r),
            border: Theme.of(context).defaultBorderSide,
          ),
    );
  }
}
