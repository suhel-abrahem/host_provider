import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hosta_provider/core/dependencies_injection.dart';
import 'package:hosta_provider/features/booking_page/data/models/get_booking_model.dart';
import '../../../../config/app/app_preferences.dart';
import '../../../../core/resource/common_state_widget/error_state_widget.dart';
import '../../../../core/resource/common_state_widget/no_data_state_widget.dart';
import '../../../../core/resource/common_state_widget/no_internet_state_widget.dart';
import '../../../../core/resource/custom_widget/snake_bar_widget/snake_bar_widget.dart';
import '../../../../core/util/helper/helper.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../login_page/domain/entities/login_state_entity.dart';
import '../bloc/get_booking_bloc.dart';
import '../widgets/booking_service_widget.dart';

class BookingPageTapPage extends StatefulWidget {
  final GetBookingModel? model;
  const BookingPageTapPage({super.key, this.model});

  @override
  State<BookingPageTapPage> createState() => _BookingPageTapPageState();
}

class _BookingPageTapPageState extends State<BookingPageTapPage> {
  GetBookingModel? getBookingModel = GetBookingModel();
  @override
  void initState() {
    super.initState();
    print('BookingPageTapPage initState called: ${widget.model}');
  }

  @override
  void didChangeDependencies() {
    getBookingModel = widget.model?.copyWith(
      acceptLanguage: Helper.getCountryCode(context),
    );
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant BookingPageTapPage oldWidget) {
    getBookingModel = widget.model?.copyWith(
      acceptLanguage: Helper.getCountryCode(context),
    );
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GetBookingBloc>(
      create: (context) =>
          getItInstance<GetBookingBloc>()
            ..add(GetBookingEvent.getBookings(getBookingModel: widget.model)),
      child: BlocListener<GetBookingBloc, GetBookingState>(
        listener: (context, state) {
          if (state is GetBookingStateError) {
            showMessage(
              context: context,
              message: LocaleKeys.common_anErrorHasOccurs.tr(),
            );
          } else if (state is GetBookingStateInitial) {
            context.read<GetBookingBloc>().add(
              GetBookingEventGetBookings(getBookingModel: widget.model),
            );
          } else if (state is GetBookingStateUnauthenticated) {
            getItInstance<AppPreferences>().setUserInfo(
              loginStateEntity: LoginStateEntity(),
            );
          }
        },
        child: BlocBuilder<GetBookingBloc, GetBookingState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox(),
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (bookings) => ListView.builder(
                itemCount: bookings?.length ?? 0,
                itemBuilder: (context, index) {
                  final booking = bookings?[index];
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 8.0.h,
                      horizontal: 20.w,
                    ),
                    child: BookingServiceWidget(bookingEntity: booking),
                  );
                },
              ),
              noData: () => const Center(child: NodataStateWidget()),
              error: () => const Center(child: ErrorStateWidget()),
              unauthenticated: () => const Center(child: ErrorStateWidget()),
              noInternet: () => Center(child: NoInternetStateWidget()),
            );
          },
        ),
      ),
    );
  }
}
