part of 'get_booking_bloc.dart';

@freezed
class GetBookingEvent with _$GetBookingEvent {
  const factory GetBookingEvent.started() = GetBookingEventStarted;
  const factory GetBookingEvent.getBookings({
    required GetBookingModel? getBookingModel,
  }) = GetBookingEventGetBookings;
}
