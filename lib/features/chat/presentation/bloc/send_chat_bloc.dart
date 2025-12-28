import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '/features/chat/domain/entities/message/message_entity.dart';
import '/features/chat/domain/usecases/send_chat_usecase.dart';
import '/features/login_page/domain/entities/login_state_entity.dart';
import '/features/refresh_token/domain/usecases/refresh_token_usecase.dart';

import '../../../../config/app/app_preferences.dart';
import '../../../../core/data_state/data_state.dart';
import '../../../../core/dependencies_injection.dart';
import '../../../refresh_token/data/models/refresh_token_model.dart';
import '../../data/models/chat_model.dart';

part 'send_chat_event.dart';
part 'send_chat_state.dart';
part 'send_chat_bloc.freezed.dart';

class SendChatBloc extends Bloc<SendChatEvent, SendChatState> {
  final RefreshTokenUsecase _refreshTokenUsecase;
  final SendChatUsecase _sendMessageUsecase;
  SendChatBloc(this._refreshTokenUsecase, this._sendMessageUsecase)
    : super(SendChatStateInitial()) {
    on<SendChatEventStarted>((event, emit) {
      emit(SendChatState.initial());
    });
    on<SendChatEventSendChat>((event, emit) async {
      LoginStateEntity? loginStateEntity = getItInstance<AppPreferences>()
          .getUserInfo();
      emit(SendChatState.loading());
      await _refreshTokenUsecase
          .call(
            params: RefreshTokenModel(
              refresh_token: loginStateEntity?.refresh_token,
              token: loginStateEntity?.access_token,
            ),
          )
          .then((onRefreshTokenValue) async {
            if (onRefreshTokenValue is DataSuccess) {
              await _sendMessageUsecase
                  .call(
                    params: event.chatModel?.copyWith(
                      authToken: onRefreshTokenValue?.data?.access_token,
                    ),
                  )
                  .then((value) {
                    if (value is DataSuccess) {
                      emit(SendChatState.sent(value?.data));
                    } else if (value is NOInternetDataState) {
                      emit(SendChatState.noInternet());
                    } else if (value is UnauthenticatedDataState) {
                      emit(SendChatState.unAuthenticated());
                    } else {
                      emit(SendChatState.error(message: value?.error));
                    }
                  });
            } else if (onRefreshTokenValue is NOInternetDataState) {
              emit(SendChatState.noInternet());
            } else {
              emit(SendChatState.unAuthenticated());
            }
          });
    });
  }
}
