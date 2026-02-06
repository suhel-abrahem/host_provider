import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '/config/app/app_preferences.dart';
import '/core/data_state/data_state.dart';
import '/core/dependencies_injection.dart';
import '/features/home_page/domain/usecases/unread_notification_and_message/get_unreade_notificatin_usecase.dart';
import '/features/login_page/domain/entities/login_state_entity.dart';
import '/features/refresh_token/data/models/refresh_token_model.dart';
import '/features/refresh_token/domain/usecases/refresh_token_usecase.dart';

import '../../domain/usecases/unread_notification_and_message/get_unread_tickets_usecase.dart';
import '../../domain/usecases/unread_notification_and_message/unread_message_usecase.dart';

part 'unread_count_event.dart';
part 'unread_count_state.dart';
part 'unread_count_bloc.freezed.dart';

class UnreadCountBloc extends Bloc<UnreadCountEvent, UnreadCountState> {
  final RefreshTokenUsecase _refreshTokenUsecase;
  final GetUnreadeNotificatinUsecase _getUnreadeNotificatinUsecase;
  final UnreadMessageUsecase _getUnreadMessageCountUsecase;
  final GetUnreadTicketsUsecase _getUnreadTicketCountUsecase;
  UnreadCountBloc(
    this._refreshTokenUsecase,
    this._getUnreadeNotificatinUsecase,
    this._getUnreadMessageCountUsecase,
    this._getUnreadTicketCountUsecase,
  ) : super(UnreadCountState.initial()) {
    on<UnreadCountEventStarted>((event, emit) {
      emit(UnreadCountState.initial());
    });
    on<UnreadCountEventGetNotificationUnreadCount>((event, emit) async {
      emit(UnreadCountState.loading());
      final LoginStateEntity? loginStateEntity = getItInstance<AppPreferences>()
          .getUserInfo();
      await _refreshTokenUsecase
          .call(
            params: RefreshTokenModel(
              refresh_token: loginStateEntity?.refresh_token,
              token: loginStateEntity?.access_token,
            ),
          )
          .then((refreshTokenOnValue) async {
            if (refreshTokenOnValue is DataSuccess) {
              await _getUnreadeNotificatinUsecase
                  .call(params: refreshTokenOnValue?.data?.access_token)
                  .then((unreadCountDataState) {
                    if (unreadCountDataState is DataSuccess) {
                      emit(
                        UnreadCountState.notificationUnreadCountLoaded(
                          count: unreadCountDataState?.data,
                        ),
                      );
                    } else if (unreadCountDataState
                        is UnauthenticatedDataState) {
                      emit(
                        UnreadCountState.unauthenticated(
                          error: unreadCountDataState?.error ?? '',
                        ),
                      );
                    } else if (unreadCountDataState is NOInternetDataState) {
                      emit(UnreadCountState.noInternet());
                    } else {
                      emit(
                        UnreadCountState.error(
                          error: unreadCountDataState?.error ?? '',
                        ),
                      );
                    }
                  });
            } else if (refreshTokenOnValue is UnauthenticatedDataState) {
              emit(
                UnreadCountState.unauthenticated(
                  error: refreshTokenOnValue?.error ?? '',
                ),
              );
            } else if (refreshTokenOnValue is NOInternetDataState) {
              emit(UnreadCountState.noInternet());
            } else {
              emit(
                UnreadCountState.error(error: refreshTokenOnValue?.error ?? ''),
              );
            }
          });
    });
    on<UnreadCountEventGetMessageUnreadCount>((event, emit) async {
      emit(UnreadCountState.loading());
      final LoginStateEntity? loginStateEntity = getItInstance<AppPreferences>()
          .getUserInfo();
      await _refreshTokenUsecase
          .call(
            params: RefreshTokenModel(
              refresh_token: loginStateEntity?.refresh_token,
              token: loginStateEntity?.access_token,
            ),
          )
          .then((refreshTokenOnValue) async {
            if (refreshTokenOnValue is DataSuccess) {
              await _getUnreadMessageCountUsecase
                  .call(params: refreshTokenOnValue?.data?.access_token)
                  .then((unreadCountDataState) {
                    if (unreadCountDataState is DataSuccess) {
                      emit(
                        UnreadCountState.messageUnreadCountLoaded(
                          count: unreadCountDataState?.data,
                        ),
                      );
                    } else if (unreadCountDataState
                        is UnauthenticatedDataState) {
                      emit(
                        UnreadCountState.unauthenticated(
                          error: unreadCountDataState?.error ?? '',
                        ),
                      );
                    } else if (unreadCountDataState is NOInternetDataState) {
                      emit(UnreadCountState.noInternet());
                    } else {
                      emit(
                        UnreadCountState.error(
                          error: unreadCountDataState?.error ?? '',
                        ),
                      );
                    }
                  });
            } else if (refreshTokenOnValue is UnauthenticatedDataState) {
              emit(
                UnreadCountState.unauthenticated(
                  error: refreshTokenOnValue?.error ?? '',
                ),
              );
            } else if (refreshTokenOnValue is NOInternetDataState) {
              emit(UnreadCountState.noInternet());
            } else {
              emit(
                UnreadCountState.error(error: refreshTokenOnValue?.error ?? ''),
              );
            }
          });
    });
    on<UnreadCountEventGetTicketUnreadCount>((event, emit) async {
      emit(UnreadCountState.loading());
      final LoginStateEntity? loginStateEntity = getItInstance<AppPreferences>()
          .getUserInfo();
      await _refreshTokenUsecase
          .call(
            params: RefreshTokenModel(
              refresh_token: loginStateEntity?.refresh_token,
              token: loginStateEntity?.access_token,
            ),
          )
          .then((refreshTokenOnValue) async {
            if (refreshTokenOnValue is DataSuccess) {
              await _getUnreadTicketCountUsecase
                  .call(params: refreshTokenOnValue?.data?.access_token)
                  .then((unreadCountDataState) {
                    if (unreadCountDataState is DataSuccess) {
                      emit(
                        UnreadCountState.ticketUnreadCountLoaded(
                          count: unreadCountDataState?.data,
                        ),
                      );
                    } else if (unreadCountDataState
                        is UnauthenticatedDataState) {
                      emit(
                        UnreadCountState.unauthenticated(
                          error: unreadCountDataState?.error ?? '',
                        ),
                      );
                    } else if (unreadCountDataState is NOInternetDataState) {
                      emit(UnreadCountState.noInternet());
                    } else {
                      emit(
                        UnreadCountState.error(
                          error: unreadCountDataState?.error ?? '',
                        ),
                      );
                    }
                  });
            } else if (refreshTokenOnValue is UnauthenticatedDataState) {
              emit(
                UnreadCountState.unauthenticated(
                  error: refreshTokenOnValue?.error ?? '',
                ),
              );
            } else if (refreshTokenOnValue is NOInternetDataState) {
              emit(UnreadCountState.noInternet());
            } else {
              emit(
                UnreadCountState.error(error: refreshTokenOnValue?.error ?? ''),
              );
            }
          });
    });
  }
}
