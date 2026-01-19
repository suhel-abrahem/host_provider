part of 'tickets_bloc_bloc.dart';

@freezed
class TicketsBlocState with _$TicketsBlocState {
  const factory TicketsBlocState.initial() = TicketsBlocStateInitial;
  const factory TicketsBlocState.loading() = TicketsBlocStateLoading;
  const factory TicketsBlocState.loadedTickets({
    required List<TicketsEntity?>? tickets,
  }) = TicketsBlocStateLoadedTickets;
  const factory TicketsBlocState.ticketCreated({
    required TicketsEntity? ticket,
  }) = TicketsBlocStateTicketCreated;
  const factory TicketsBlocState.error({required String? message}) =
      TicketsBlocStateError;
  const factory TicketsBlocState.noData() = TicketsBlocStateNoData;
  const factory TicketsBlocState.connectionError() =
      TicketsBlocStateConnectionError;
  const factory TicketsBlocState.sessionExpired() =
      TicketsBlocStateSessionExpired;
  const factory TicketsBlocState.ticketDetailsLoaded({
    required TicketEntity? ticketDetails,
  }) = TicketsBlocStateTicketDetailsLoaded;
  const factory TicketsBlocState.messageSentSuccessfully({
    MessageEntity? messageEntity,
  }) = TicketsBlocStateMessageSentSuccessfully;
  const factory TicketsBlocState.messageSendError({required String? message}) =
      TicketsBlocStateMessageSendError;
}
