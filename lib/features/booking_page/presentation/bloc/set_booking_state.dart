part of 'set_booking_bloc.dart';

@freezed
class SetBookingState with _$SetBookingState {
  const factory SetBookingState.initial() = SetBookingStateInitial;
  const factory SetBookingState.loading() = SetBookingStateLoading;
  const factory SetBookingState.loaded({required BookingEntity? bookings}) =
      SetBookingStateLoaded;
  const factory SetBookingState.error() = SetBookingStateError;
  const factory SetBookingState.unauthenticated() =
      SetBookingStateUnauthenticated;
  const factory SetBookingState.noData() = SetBookingStateNoData;
  const factory SetBookingState.noInternet() = SetBookingStateNoInternet;
}
