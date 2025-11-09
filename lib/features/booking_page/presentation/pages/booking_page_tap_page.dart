import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hosta_provider/core/resource/common_state_widget/no_internet_state_widget.dart';
import 'package:hosta_provider/features/booking_page/presentation/bloc/get_booking_bloc.dart';
import 'package:hosta_provider/features/booking_page/presentation/widgets/booking_service_widget.dart';

class BookingPageTapPage extends StatelessWidget {
  const BookingPageTapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetBookingBloc, GetBookingState>(
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
          noData: () => const Center(child: Text('No bookings available.')),
          error: () => const Center(
            child: Text('An error occurred while fetching bookings.'),
          ),
          unauthenticated: () => SizedBox(),
          noInternet: () => NoInternetStateWidget(),
        );
      },
    );
  }
}
