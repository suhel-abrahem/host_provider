part of 'tickets_bloc_bloc.dart';

@freezed
class TicketsBlocEvent with _$TicketsBlocEvent {
  const factory TicketsBlocEvent.started() = TicketsBlocEventStarted;
  const factory TicketsBlocEvent.getTickets({required GetTicketsModel? model}) =
      TicketsBlocEventGetTickets;
  const factory TicketsBlocEvent.createTicket({
    required CreateTicketModel? model,
  }) = TicketsBlocEventCreateTicket;
  const factory TicketsBlocEvent.getTicketDetails({
    required GetTicketsModel? model,
  }) = TicketsBlocEventGetTicketDetails;
  const factory TicketsBlocEvent.sendTicketMessage({
    required SendTicketMessageModel? model,
  }) = TicketsBlocEventSendTicketMessage;
}
