part of 'get_booking_bloc.dart';

@freezed
class GetBookingState with _$GetBookingState {
  const factory GetBookingState.initial() = GetBookingStateInitial;
  const factory GetBookingState.loading() = GetBookingStateLoading;
  const factory GetBookingState.loaded({
    required List<BookingEntity?>? bookings,
  }) = GetBookingStateLoaded;
  const factory GetBookingState.error() = GetBookingStateError;
  const factory GetBookingState.unauthenticated() =
      GetBookingStateUnauthenticated;
  const factory GetBookingState.noData() = GetBookingStateNoData;
  const factory GetBookingState.noInternet() = GetBookingStateNoInternet;
}
