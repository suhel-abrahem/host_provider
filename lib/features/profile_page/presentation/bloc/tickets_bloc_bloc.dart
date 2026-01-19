import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '/config/app/app_preferences.dart';
import '/core/dependencies_injection.dart';
import '/features/login_page/domain/entities/login_state_entity.dart';
import '/features/profile_page/domain/usecases/help/get_tickets_usecase.dart';
import '/features/refresh_token/data/models/refresh_token_model.dart';
import '/features/refresh_token/domain/usecases/refresh_token_usecase.dart';

import '../../../../core/data_state/data_state.dart';
import '../../../chat/domain/entities/message/message_entity.dart';
import '../../data/models/help/create_ticket_model.dart';
import '../../data/models/help/get_tickets_model.dart';
import '../../data/models/help/send_ticket_message_model.dart';
import '../../domain/entities/help/ticket_entity.dart';
import '../../domain/entities/help/tickets_entity.dart';
import '../../domain/usecases/help/create_ticket_usecase.dart';
import '../../domain/usecases/help/get_ticket_details_usecase.dart';
import '../../domain/usecases/help/send_ticket_message_usecase.dart';

part 'tickets_bloc_event.dart';
part 'tickets_bloc_state.dart';
part 'tickets_bloc_bloc.freezed.dart';

class TicketsBlocBloc extends Bloc<TicketsBlocEvent, TicketsBlocState> {
  final RefreshTokenUsecase? _refreshTokenUsecase;
  final GetTicketsUsecase? _getTicketsUsecase;
  final CreateTicketUsecase? _createTicketUsecase;
  final GetTicketDetailsUsecase? _getTicketDetailsUsecase;
  final SendTicketMessageUsecase? _sendTicketMessageUsecase;
  TicketsBlocBloc(
    this._refreshTokenUsecase,
    this._getTicketsUsecase,
    this._createTicketUsecase,
    this._getTicketDetailsUsecase,
    this._sendTicketMessageUsecase,
  ) : super(TicketsBlocState.initial()) {
    on<TicketsBlocEventStarted>((event, emit) {
      emit(TicketsBlocState.initial());
    });
    on<TicketsBlocEventGetTickets>((event, emit) async {
      emit(TicketsBlocState.loading());
      final LoginStateEntity? loginState = getItInstance<AppPreferences>()
          .getUserInfo();
      await _refreshTokenUsecase
          ?.call(
            params: RefreshTokenModel(
              refresh_token: loginState?.refresh_token,
              token: loginState?.access_token,
            ),
          )
          .then((refreshTokenState) async {
            if (refreshTokenState is DataSuccess) {
              await _getTicketsUsecase
                  ?.call(
                    params: event.model?.copyWith(
                      token: refreshTokenState?.data?.access_token,
                    ),
                  )
                  .then((ticketsState) {
                    if (ticketsState is DataSuccess) {
                      print("TicketsState Data: ${ticketsState?.data}");
                      if (ticketsState?.data != null &&
                          ticketsState?.data?.isNotEmpty == true) {
                        emit(
                          TicketsBlocState.loadedTickets(
                            tickets: ticketsState?.data,
                          ),
                        );
                      } else {
                        emit(TicketsBlocState.noData());
                      }
                    } else if (ticketsState is NOInternetDataState) {
                      emit(TicketsBlocState.connectionError());
                    } else if (ticketsState is UnauthenticatedDataState) {
                      emit(TicketsBlocState.sessionExpired());
                    } else {
                      emit(
                        TicketsBlocState.error(
                          message: "Failed to load tickets",
                        ),
                      );
                    }
                  });
            } else if (refreshTokenState is NOInternetDataState) {
              emit(TicketsBlocState.connectionError());
            } else {
              emit(TicketsBlocState.sessionExpired());
            }
          });
    });
    on<TicketsBlocEventCreateTicket>((event, emit) async {
      emit(TicketsBlocState.loading());
      final LoginStateEntity? loginState = getItInstance<AppPreferences>()
          .getUserInfo();
      await _refreshTokenUsecase
          ?.call(
            params: RefreshTokenModel(
              refresh_token: loginState?.refresh_token,
              token: loginState?.access_token,
            ),
          )
          .then((refreshTokenState) async {
            if (refreshTokenState is DataSuccess) {
              await _createTicketUsecase
                  ?.call(
                    params: event.model?.copyWith(
                      token: refreshTokenState?.data?.access_token,
                    ),
                  )
                  .then((createTicketState) {
                    if (createTicketState is DataSuccess) {
                      emit(
                        TicketsBlocState.ticketCreated(
                          ticket: createTicketState?.data,
                        ),
                      );
                    } else if (createTicketState is NOInternetDataState) {
                      emit(TicketsBlocState.connectionError());
                    } else if (createTicketState is UnauthenticatedDataState) {
                      emit(TicketsBlocState.sessionExpired());
                    } else {
                      emit(
                        TicketsBlocState.error(
                          message: "Failed to create ticket",
                        ),
                      );
                    }
                  });
            } else if (refreshTokenState is NOInternetDataState) {
              emit(TicketsBlocState.connectionError());
            } else {
              emit(TicketsBlocState.sessionExpired());
            }
          });
    });
    on<TicketsBlocEventGetTicketDetails>((event, emit) async {
      emit(TicketsBlocState.loading());
      final LoginStateEntity? loginState = getItInstance<AppPreferences>()
          .getUserInfo();
      await _refreshTokenUsecase
          ?.call(
            params: RefreshTokenModel(
              refresh_token: loginState?.refresh_token,
              token: loginState?.access_token,
            ),
          )
          .then((refreshTokenState) async {
            if (refreshTokenState is DataSuccess) {
              await _getTicketDetailsUsecase
                  ?.call(
                    params: event.model?.copyWith(
                      token: refreshTokenState?.data?.access_token,
                    ),
                  )
                  .then((ticketDetailsState) {
                    if (ticketDetailsState is DataSuccess) {
                      emit(
                        TicketsBlocState.ticketDetailsLoaded(
                          ticketDetails: ticketDetailsState?.data,
                        ),
                      );
                    } else if (ticketDetailsState is NOInternetDataState) {
                      emit(TicketsBlocState.connectionError());
                    } else if (ticketDetailsState is UnauthenticatedDataState) {
                      emit(TicketsBlocState.sessionExpired());
                    } else {
                      emit(
                        TicketsBlocState.error(
                          message: "Failed to load ticket details",
                        ),
                      );
                    }
                  });
            } else if (refreshTokenState is NOInternetDataState) {
              emit(TicketsBlocState.connectionError());
            } else {
              emit(TicketsBlocState.sessionExpired());
            }
          });
    });
    on<TicketsBlocEventSendTicketMessage>((event, emit) async {
      emit(TicketsBlocState.loading());
      final LoginStateEntity? loginState = getItInstance<AppPreferences>()
          .getUserInfo();
      await _refreshTokenUsecase
          ?.call(
            params: RefreshTokenModel(
              refresh_token: loginState?.refresh_token,
              token: loginState?.access_token,
            ),
          )
          .then((refreshTokenState) async {
            if (refreshTokenState is DataSuccess) {
              await _sendTicketMessageUsecase
                  ?.call(
                    params: event.model?.copyWith(
                      token: refreshTokenState?.data?.access_token,
                    ),
                  )
                  .then((sendMessageState) {
                    if (sendMessageState is DataSuccess) {
                      emit(
                        TicketsBlocState.messageSentSuccessfully(
                          messageEntity: sendMessageState?.data,
                        ),
                      );
                    } else if (sendMessageState is NOInternetDataState) {
                      emit(TicketsBlocState.connectionError());
                    } else if (sendMessageState is UnauthenticatedDataState) {
                      emit(TicketsBlocState.sessionExpired());
                    } else {
                      emit(
                        TicketsBlocState.messageSendError(
                          message: "Failed to send message",
                        ),
                      );
                    }
                  });
            } else if (refreshTokenState is NOInternetDataState) {
              emit(TicketsBlocState.connectionError());
            } else {
              emit(TicketsBlocState.sessionExpired());
            }
          });
    });
  }
}
