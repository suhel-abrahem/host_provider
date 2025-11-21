import '../../../../core/data_state/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/models/get_booking_model.dart';
import '../entities/booking_entity.dart';

import '../repositories/booking_repository.dart';

class SetBookingUsecase
    implements UseCase<DataState<BookingEntity?>?, GetBookingModel> {
  final BookingRepository _bookingRepository;
  SetBookingUsecase(this._bookingRepository);

  @override
  Future<DataState<BookingEntity?>?> call({GetBookingModel? params}) async {
    return await _bookingRepository.set(getBookingModel: params);
  }
}
