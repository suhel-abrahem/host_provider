import '../../../../core/data_state/data_state.dart';
import '../../data/models/get_booking_model.dart';

import '../entities/booking_entity.dart';

abstract class BookingRepository {
  Future<DataState<List<BookingEntity?>?>?> getBookings({
    GetBookingModel? getBookingModel,
  });
  Future<DataState<BookingEntity?>?> set({GetBookingModel? getBookingModel});
}
