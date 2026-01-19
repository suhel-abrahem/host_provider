import '/core/data_state/data_state.dart';
import '/core/usecase/usecase.dart';
import '/features/chat/domain/entities/message/message_entity.dart';
import '/features/profile_page/domain/repositories/help/tickets_repository.dart';

import '../../../data/models/help/send_ticket_message_model.dart';

class SendTicketMessageUsecase
    implements UseCase<DataState<MessageEntity?>?, SendTicketMessageModel?> {
  final TicketsRepository _repository;
  SendTicketMessageUsecase(this._repository);
  @override
  Future<DataState<MessageEntity?>?> call({
    SendTicketMessageModel? params,
  }) async {
    return await _repository.sendTicketMessage(params);
  }
}
