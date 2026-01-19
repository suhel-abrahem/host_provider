import '/core/data_state/data_state.dart';
import '/core/usecase/usecase.dart';

import '../../entities/help/ticket_entity.dart';

import '../../../data/models/help/get_tickets_model.dart';
import '../../repositories/help/tickets_repository.dart';

class GetTicketDetailsUsecase
    implements UseCase<DataState<TicketEntity?>?, GetTicketsModel?> {
  final TicketsRepository _ticketsRepository;
  GetTicketDetailsUsecase(this._ticketsRepository);
  @override
  Future<DataState<TicketEntity?>?> call({GetTicketsModel? params}) async {
    return await _ticketsRepository.getTicketDetails(params);
  }
}
