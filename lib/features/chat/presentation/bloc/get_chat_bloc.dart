import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '/config/app/app_preferences.dart';
import '/core/data_state/data_state.dart';
import '/core/dependencies_injection.dart';
import '/features/chat/data/models/chat_model.dart';

import '/features/refresh_token/data/models/refresh_token_model.dart';
import '/features/refresh_token/domain/usecases/refresh_token_usecase.dart';

import '../../domain/entities/chat/chat_entity.dart';
import '../../domain/entities/chats/chats_entity.dart';
import '../../domain/usecases/get_chat_details_usecase.dart';
import '../../domain/usecases/get_chats_usecase.dart';

part 'get_chat_event.dart';
part 'get_chat_state.dart';
part 'get_chat_bloc.freezed.dart';

class GetChatBloc extends Bloc<GetChatEvent, GetChatState> {
  final GetChatsUsecase _getChatsUsecase;
  final GetChatDetailsUsecase _getChatDetailsUsecase;
  final RefreshTokenUsecase _refreshTokenUsecase;
  GetChatBloc(
    this._getChatsUsecase,
    this._getChatDetailsUsecase,
    this._refreshTokenUsecase,
  ) : super(GetChatState.initial()) {
    on<GetChatEventStarted>((event, emit) {
      emit(GetChatState.initial());
    });
    on<GetChatEventGetChats>((event, emit) async {
      emit(GetChatState.loading());
      final loginStateEntity = getItInstance<AppPreferences>().getUserInfo();
      emit(GetChatState.loading());
      await _refreshTokenUsecase
          .call(
            params: RefreshTokenModel(
              refresh_token: loginStateEntity?.refresh_token,
              token: loginStateEntity?.access_token,
            ),
          )
          .then((onRefreshTokenValue) async {
            if (onRefreshTokenValue is DataSuccess) {
              await _getChatsUsecase
                  .call(
                    params: event.chatModel?.copyWith(
                      authToken: onRefreshTokenValue?.data?.access_token,
                    ),
                  )
                  .then((value) {
                    if (value is DataSuccess) {
                      if (value?.data == null || value?.data?.isEmpty == true) {
                        emit(GetChatState.noChats());
                        return;
                      }
                      emit(
                        GetChatState.getChatStateLoaded(chatModel: value?.data),
                      );
                    } else if (value is DataFailed) {
                      emit(GetChatState.error(message: value?.error));
                    } else if (value is UnauthenticatedDataState) {
                      emit(GetChatState.unAuthenticated());
                    } else if (value is NOInternetDataState) {
                      emit(GetChatState.noInternet());
                    } else {
                      emit(GetChatState.error(message: value?.error));
                    }
                  });
            } else if (onRefreshTokenValue is NOInternetDataState) {
              emit(GetChatState.noInternet());
            } else {
              emit(GetChatState.unAuthenticated());
            }
          });
    });
    on<GetChatEventGetChatDetails>((event, emit) async {
      emit(GetChatState.loading());
      final loginStateEntity = getItInstance<AppPreferences>().getUserInfo();
      emit(GetChatState.loading());
      await _refreshTokenUsecase
          .call(
            params: RefreshTokenModel(
              refresh_token: loginStateEntity?.refresh_token,
              token: loginStateEntity?.access_token,
            ),
          )
          .then((onRefreshTokenValue) async {
            if (onRefreshTokenValue is DataSuccess) {
              await _getChatDetailsUsecase
                  .call(
                    params: event.chatModel?.copyWith(
                      authToken: onRefreshTokenValue?.data?.access_token,
                    ),
                  )
                  .then((value) {
                    if (value is DataSuccess) {
                      if (value?.data == null ||
                          value?.data?.messages?.isEmpty == true) {
                        emit(GetChatState.noChats());
                        return;
                      }
                      emit(
                        GetChatState.getChatDetailsLoaded(
                          chatEntity: value?.data,
                        ),
                      );
                    } else if (value is DataFailed) {
                      emit(GetChatState.error(message: value?.error));
                    } else if (value is UnauthenticatedDataState) {
                      emit(GetChatState.unAuthenticated());
                    } else if (value is NOInternetDataState) {
                      emit(GetChatState.noInternet());
                    } else {
                      emit(GetChatState.error(message: value?.error));
                    }
                  });
            } else if (onRefreshTokenValue is NOInternetDataState) {
              emit(GetChatState.noInternet());
            } else {
              emit(GetChatState.unAuthenticated());
            }
          });
    });
  }
}
