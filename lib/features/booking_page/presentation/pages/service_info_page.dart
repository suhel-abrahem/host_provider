import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glass/glass.dart';
import 'package:go_router/go_router.dart';
import '../../../../config/theme/app_theme.dart';
import '../../../../core/dependencies_injection.dart';
import '../../../../core/resource/common_entity/customer_entity.dart';
import '../../../../core/resource/common_state_widget/error_state_widget.dart';
import '../../../../core/resource/common_state_widget/no_data_state_widget.dart';
import '../../../../core/resource/common_state_widget/no_internet_state_widget.dart';
import '../../../../core/resource/image_widget.dart';
import '../../../../core/resource/main_page/main_page.dart';
import '../../data/models/get_booking_model.dart';
import '../../domain/entities/booking_entity.dart';
import '../bloc/get_booking_bloc.dart';
import '../widgets/address_info_widget.dart';
import '../widgets/client_info_widget.dart';
import '../widgets/service_info_widget.dart';

import '../../../../config/route/routes_manager.dart';
import '../../../../core/constants/font_constants.dart';
import '../../../../core/resource/common_entity/addresses_entity.dart';
import '../../../../core/resource/custom_widget/custom_input_field/custom_input_field.dart';
import '../../../../core/resource/custom_widget/snake_bar_widget/snake_bar_widget.dart';
import '../../../../core/util/helper/helper.dart';
import '../../../../generated/locale_keys.g.dart';
import '../bloc/set_booking_bloc.dart';

class ServiceInfoPage extends StatefulWidget {
  final String? serviceId;
  const ServiceInfoPage({super.key, required this.serviceId});

  @override
  State<ServiceInfoPage> createState() => _ServiceInfoPageState();
}

class _ServiceInfoPageState extends State<ServiceInfoPage> {
  GetBookingModel? getBookingModel = GetBookingModel();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getItInstance<GetBookingBloc>()
        ..add(
          GetBookingEventGetBookings(
            getBookingModel: getBookingModel?.copyWith(id: widget.serviceId),
          ),
        ),
      child: Builder(
        builder: (context) {
          return BlocBuilder<GetBookingBloc, GetBookingState>(
            builder: (context, state) {
              String? title = "Service Info";
              if (state is GetBookingStateLoaded) {
                title = state.bookings?.last?.booking_number;
              }
              return MainPage(
                title: title,
                body: state.when(
                  initial: () => Center(child: ErrorStateWidget()),
                  loading: () => Center(child: CircularProgressIndicator()),
                  loaded: (data) {
                    final List? rawAddresses =
                        data?.last?.customer?["addresses"];
                    List<AddressesEntity?>? addresses = [];
                    rawAddresses?.forEach(
                      (action) =>
                          addresses.add(AddressesEntity.fromJson(action)),
                    );
                    return ListView(
                      children: [
                        Padding(
                          padding: EdgeInsetsGeometry.symmetric(
                            horizontal: 16.0,
                            vertical: 16.h,
                          ),
                          child: ClientInfoWidget(
                            customerEntity: CustomerEntity.fromJson(
                              data?.last?.customer ?? {},
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsGeometry.symmetric(
                            horizontal: 16.0,
                            vertical: 16.h,
                          ),
                          child:
                              Container(
                                width: 320.w,
                                height: 270.h,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12.w,
                                  vertical: 12.h,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Center(
                                      child: Text(
                                        LocaleKeys.bookingPage_serviceImages
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
                                    ),
                                    Expanded(
                                      child:
                                          !((data?.last?.images?.length ?? 0) ==
                                              0)
                                          ? ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                              itemBuilder: (context, index) => Padding(
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                      top: 8.h,
                                                      bottom: 8.h,
                                                      end:
                                                          (data
                                                                      ?.last
                                                                      ?.images
                                                                      ?.length ??
                                                                  0) >
                                                              1
                                                          ? 16.w
                                                          : 60.w,
                                                      start:
                                                          (data
                                                                      ?.last
                                                                      ?.images
                                                                      ?.length ??
                                                                  0) >
                                                              1
                                                          ? 0.w
                                                          : 60.w,
                                                    ),
                                                child: ElevatedButton(
                                                  style: Theme.of(context)
                                                      .elevatedButtonTheme
                                                      .style
                                                      ?.copyWith(
                                                        padding:
                                                            WidgetStatePropertyAll(
                                                              EdgeInsets.zero,
                                                            ),
                                                        backgroundColor:
                                                            WidgetStatePropertyAll(
                                                              Colors
                                                                  .transparent,
                                                            ),
                                                        shadowColor:
                                                            WidgetStatePropertyAll(
                                                              Colors
                                                                  .transparent,
                                                            ),
                                                        shape: WidgetStatePropertyAll(
                                                          RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  20.r,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                  onPressed: () {
                                                    showDialog(
                                                      context: context,
                                                      builder: (context) => Dialog(
                                                        insetAnimationDuration:
                                                            const Duration(
                                                              milliseconds: 300,
                                                            ),
                                                        insetAnimationCurve:
                                                            Curves.easeInOut,
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                12.r,
                                                              ),
                                                          child: ImageWidget(
                                                            errorWidget: SizedBox(
                                                              width: 100.w,
                                                              height: 100.h,
                                                              child: Center(
                                                                child: Icon(
                                                                  Icons
                                                                      .broken_image_outlined,
                                                                  size: 50.r,
                                                                  color: Theme.of(
                                                                    context,
                                                                  ).primaryColor,
                                                                ),
                                                              ),
                                                            ),
                                                            imageUrl:
                                                                data
                                                                    ?.last
                                                                    ?.images?[index]["image_url"] ??
                                                                "",
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          20.r,
                                                        ),
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color:
                                                                Theme.of(
                                                                      context,
                                                                    )
                                                                    .colorScheme
                                                                    .shadow
                                                                    .withValues(
                                                                      alpha:
                                                                          0.2,
                                                                    ),
                                                            blurRadius: 8.r,
                                                            offset: Offset(
                                                              0,
                                                              4.h,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      height: 200.h,
                                                      width: 200.w,
                                                      child: ImageWidget(
                                                        boxFit: BoxFit.cover,
                                                        errorWidget: Center(
                                                          child: Icon(
                                                            Icons
                                                                .broken_image_outlined,
                                                            size: 50.r,
                                                            color: Theme.of(context)
                                                                .colorScheme
                                                                .onErrorContainer,
                                                          ),
                                                        ),
                                                        imageUrl:
                                                            data
                                                                ?.last
                                                                ?.images?[index]["image_url"] ??
                                                            "",
                                                        height: 200.h,
                                                        width: 200.w,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              itemCount:
                                                  data?.last?.images?.length ??
                                                  0,
                                              shrinkWrap: true,
                                            )
                                          : Center(
                                              child: Text(
                                                LocaleKeys.common_noThingToShow
                                                    .tr(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelMedium
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
                              ).asGlass(
                                frosted: true,
                                blurX: 8,
                                blurY: 8,
                                tintColor: Theme.of(context)
                                    .colorScheme
                                    .primaryContainer
                                    .withValues(alpha: 0.9),
                                clipBorderRadius: BorderRadius.circular(12.r),
                                border: Theme.of(context).defaultBorderSide,
                              ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: ServiceInfoWidget(
                            bookingEntity: data?.last ?? BookingEntity(),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16.w,
                            vertical: 16.h,
                          ),
                          child: AddressInfoWidget(addressesEntity: addresses),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child:
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16.w,
                                  vertical: 12.h,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      LocaleKeys.serviceDetailsPage_notes.tr(),
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
                                    Padding(
                                      padding: EdgeInsets.only(top: 12.h),
                                      child:
                                          Container(
                                            width: double.maxFinite,
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 16.w,
                                              vertical: 12.h,
                                            ),

                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  data?.last?.notes ??
                                                      LocaleKeys
                                                          .serviceDetailsPage_noNotes
                                                          .tr(),
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .labelMedium
                                                      ?.copyWith(
                                                        fontFamily:
                                                            FontConstants.fontFamily(
                                                              context.locale,
                                                            ),
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ).asGlass(
                                            frosted: true,
                                            blurX: 18,
                                            blurY: 18,
                                            tintColor: Theme.of(context)
                                                .colorScheme
                                                .primaryContainer
                                                .withValues(alpha: 0.9),
                                            clipBorderRadius:
                                                BorderRadius.circular(12.r),
                                            border: Theme.of(
                                              context,
                                            ).defaultBorderSide,
                                          ),
                                    ),
                                  ],
                                ),
                              ).asGlass(
                                frosted: true,
                                blurX: 8,
                                blurY: 8,
                                tintColor: Theme.of(context)
                                    .colorScheme
                                    .primaryContainer
                                    .withValues(alpha: 0.9),
                                clipBorderRadius: BorderRadius.circular(12.r),
                                border: Theme.of(context).defaultBorderSide,
                              ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.h),
                          child: BlocProvider<SetBookingBloc>(
                            create: (context) =>
                                getItInstance<SetBookingBloc>()
                                  ..add(SetBookingEvent.started()),
                            child: BlocListener<SetBookingBloc, SetBookingState>(
                              listener: (context, state) {
                                state.when(
                                  initial: () {
                                    setState(() {
                                      isLoading = false;
                                    });
                                  },
                                  loading: () {
                                    setState(() {
                                      isLoading = true;
                                    });
                                  },
                                  loaded: (bookings) {
                                    setState(() {
                                      isLoading = false;
                                    });
                                    showMessage(
                                      message: LocaleKeys.common_success.tr(),
                                      context: context,
                                    );
                                    context.pop();
                                    context.pushNamed(
                                      RoutesName.serviceInfoPage,
                                      pathParameters: {
                                        "serviceId": widget.serviceId ?? "",
                                      },
                                    );
                                  },
                                  error: () {
                                    setState(() {
                                      isLoading = false;
                                    });
                                    showMessage(
                                      message: LocaleKeys.common_success.tr(),
                                      context: context,
                                    );
                                  },
                                  unauthenticated: () {
                                    setState(() {
                                      isLoading = false;
                                    });
                                    context.goNamed(RoutesName.loginPage);
                                  },
                                  noData: () {
                                    setState(() {
                                      isLoading = false;
                                    });
                                  },
                                  noInternet: () {
                                    setState(() {
                                      isLoading = false;
                                    });
                                    showMessage(
                                      message: LocaleKeys
                                          .common_noInternetPullDown
                                          .tr(),
                                      context: context,
                                    );
                                  },
                                );
                              },
                              child: Builder(
                                builder: (context) {
                                  return switch (data?.last?.status) {
                                    "pending" => Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        SizedBox(
                                          width: 145.w,
                                          height: 40.h,
                                          child: ElevatedButton(
                                            onPressed: isLoading
                                                ? null
                                                : () {
                                                    context
                                                        .read<SetBookingBloc>()
                                                        .add(
                                                          SetBookingEvent.setBookings(
                                                            getBookingModel:
                                                                GetBookingModel(
                                                                  id: data
                                                                      ?.last
                                                                      ?.id
                                                                      .toString(),
                                                                  status:
                                                                      "confirm",
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
                                              LocaleKeys
                                                  .bookingPage_acceptBooking
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
                                        ),

                                        SizedBox(
                                          width: 145.w,
                                          height: 40.h,
                                          child: ElevatedButton(
                                            onPressed: isLoading
                                                ? null
                                                : () {
                                                    context
                                                        .read<SetBookingBloc>()
                                                        .add(
                                                          SetBookingEvent.setBookings(
                                                            getBookingModel:
                                                                GetBookingModel(
                                                                  id: data
                                                                      ?.last
                                                                      ?.id
                                                                      .toString(),
                                                                  status:
                                                                      "reject",
                                                                ),
                                                          ),
                                                        );
                                                  },
                                            style: Theme.of(context)
                                                .elevatedButtonTheme
                                                .style
                                                ?.copyWith(
                                                  backgroundColor:
                                                      WidgetStatePropertyAll(
                                                        Theme.of(
                                                          context,
                                                        ).colorScheme.error,
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
                                                    fontSize: 16.sp,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    "confirmed" => Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        SizedBox(
                                          height: 40.h,
                                          width: 145.w,
                                          child: ElevatedButton(
                                            onPressed: isLoading
                                                ? null
                                                : () {
                                                    context
                                                        .read<SetBookingBloc>()
                                                        .add(
                                                          SetBookingEvent.setBookings(
                                                            getBookingModel:
                                                                GetBookingModel(
                                                                  id: data
                                                                      ?.last
                                                                      ?.id
                                                                      .toString(),
                                                                  status:
                                                                      "start",
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
                                                  backgroundColor:
                                                      WidgetStatePropertyAll(
                                                        Helper.getColorByStatus(
                                                          "confirmed",
                                                          context,
                                                        )!,
                                                      ),
                                                ),
                                            child: Center(
                                              child: Text(
                                                LocaleKeys
                                                    .bookingPage_startService
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
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 40.h,
                                          width: 145.w,
                                          child: Builder(
                                            builder: (buildContext) {
                                              return ElevatedButton(
                                                onPressed: isLoading
                                                    ? null
                                                    : () {
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
                                                                            fontFamily: FontConstants.fontFamily(
                                                                              context.locale,
                                                                            ),
                                                                          ),
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          150.h,
                                                                      child: Form(
                                                                        key:
                                                                            formKey,
                                                                        autovalidateMode:
                                                                            AutovalidateMode.onUserInteraction,
                                                                        child: CustomInputField(
                                                                          label: LocaleKeys
                                                                              .bookingPage_rejectReason
                                                                              .tr(),
                                                                          height:
                                                                              150.h,
                                                                          maxLines:
                                                                              5,
                                                                          onChanged:
                                                                              (
                                                                                value,
                                                                              ) => reason = value,
                                                                          validator:
                                                                              (
                                                                                value,
                                                                              ) {
                                                                                if (value ==
                                                                                        null ||
                                                                                    value.isEmpty) {
                                                                                  return LocaleKeys.bookingPage_pleaseProvideAReasonForRejection.tr();
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
                                                                    Navigator.of(
                                                                      context,
                                                                    ).pop();
                                                                  },
                                                                  child: Text(
                                                                    LocaleKeys
                                                                        .common_cancel
                                                                        .tr(),
                                                                  ),
                                                                ),
                                                                TextButton(
                                                                  onPressed:
                                                                      isLoading
                                                                      ? null
                                                                      : () {
                                                                          if (((formKey.currentState?.validate()) ??
                                                                              false)) {
                                                                            buildContext
                                                                                .read<
                                                                                  SetBookingBloc
                                                                                >()
                                                                                .add(
                                                                                  SetBookingEvent.setBookings(
                                                                                    getBookingModel: GetBookingModel(
                                                                                      reason: reason,
                                                                                      id: widget.serviceId.toString(),
                                                                                      status: "cancel",
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                            Navigator.of(
                                                                              context,
                                                                            ).pop();
                                                                          }
                                                                        },
                                                                  child: Text(
                                                                    LocaleKeys
                                                                        .common_save
                                                                        .tr(),
                                                                  ),
                                                                ),
                                                              ],
                                                              backgroundColor:
                                                                  Theme.of(
                                                                        context,
                                                                      )
                                                                      .colorScheme
                                                                      .primaryContainer
                                                                      .withValues(
                                                                        alpha:
                                                                            0.8,
                                                                      ),
                                                            );
                                                          },
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
                                                            if (callback
                                                                .contains(
                                                                  WidgetState
                                                                      .pressed,
                                                                )) {
                                                              return EdgeInsets.symmetric(
                                                                vertical: 12.h,
                                                              );
                                                            }
                                                            return EdgeInsets
                                                                .zero;
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
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 16.w,
                                        ),
                                        child: ElevatedButton(
                                          onPressed: isLoading
                                              ? null
                                              : () {
                                                  context
                                                      .read<SetBookingBloc>()
                                                      .add(
                                                        SetBookingEvent.setBookings(
                                                          getBookingModel:
                                                              GetBookingModel(
                                                                id: data
                                                                    ?.last
                                                                    ?.id
                                                                    .toString(),
                                                                status:
                                                                    "complete",
                                                              ),
                                                        ),
                                                      );
                                                },
                                          style: Theme.of(context)
                                              .elevatedButtonTheme
                                              .style
                                              ?.copyWith(
                                                backgroundColor:
                                                    WidgetStatePropertyAll(
                                                      Helper.getColorByStatus(
                                                        "in_progress",
                                                        context,
                                                      )!,
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
                                          child: Center(
                                            child: Text(
                                              LocaleKeys
                                                  .bookingPage_finishService
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
                        ),
                      ],
                    );
                  },
                  error: () => Center(child: ErrorStateWidget()),
                  unauthenticated: () => Center(child: ErrorStateWidget()),
                  noData: () => Center(child: NodataStateWidget()),
                  noInternet: () => Center(child: NoInternetStateWidget()),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
