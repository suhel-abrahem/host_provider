import '../../../../core/data_state/data_state.dart';
import '../../../../core/usecase/usecase.dart';

import '../../data/models/get_booking_model.dart';
import '../entities/booking_entity.dart';
import '../repositories/booking_repository.dart';

class GetBookingUsecase
    implements UseCase<DataState<List<BookingEntity?>?>?, GetBookingModel?> {
  final BookingRepository _bookingRepository;
  GetBookingUsecase(this._bookingRepository);
  @override
  Future<DataState<List<BookingEntity?>?>?> call({
    GetBookingModel? params,
  }) async {
    return await _bookingRepository.getBookings(getBookingModel: params);
  }
}
