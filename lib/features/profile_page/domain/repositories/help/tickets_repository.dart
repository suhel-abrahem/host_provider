import '/core/data_state/data_state.dart';

import '/features/chat/domain/entities/message/message_entity.dart';
import '/features/profile_page/domain/entities/help/tickets_entity.dart';

import '../../../data/models/help/create_ticket_model.dart';
import '../../../data/models/help/get_tickets_model.dart';
import '../../../data/models/help/send_ticket_message_model.dart';
import '../../entities/help/ticket_entity.dart';

abstract class TicketsRepository {
  Future<DataState<List<TicketsEntity?>?>?> getTickets(GetTicketsModel? model);
  Future<DataState<TicketsEntity?>?> createTicket(CreateTicketModel? model);
  Future<DataState<TicketEntity?>?> getTicketDetails(GetTicketsModel? model);
  Future<DataState<MessageEntity?>?> sendTicketMessage(
    SendTicketMessageModel? model,
  );
}
