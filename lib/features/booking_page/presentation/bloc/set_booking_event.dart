part of 'set_booking_bloc.dart';

@freezed
class SetBookingEvent with _$SetBookingEvent {
  const factory SetBookingEvent.started() = SetBookingEventStarted;
  const factory SetBookingEvent.setBookings({
    required GetBookingModel? getBookingModel,
  }) = SetBookingEventSetBookings;
}
