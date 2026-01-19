import '/core/data_state/data_state.dart';
import '/core/usecase/usecase.dart';
import '/features/profile_page/domain/repositories/help/tickets_repository.dart';

import '../../../data/models/help/create_ticket_model.dart';
import '../../entities/help/tickets_entity.dart';

class CreateTicketUsecase
    implements UseCase<DataState<TicketsEntity?>?, CreateTicketModel?> {
  final TicketsRepository _repository;
  CreateTicketUsecase(this._repository);
  @override
  Future<DataState<TicketsEntity?>?> call({CreateTicketModel? params}) async {
    return await _repository.createTicket(params);
  }
}
