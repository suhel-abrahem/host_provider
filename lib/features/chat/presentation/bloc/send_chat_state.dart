part of 'send_chat_bloc.dart';

@freezed
class SendChatState with _$SendChatState {
  const factory SendChatState.initial() = SendChatStateInitial;
  const factory SendChatState.loading() = SendChatStateLoading;
  const factory SendChatState.sent(MessageEntity? messageEntity) =
      SendChatStateSent;
  const factory SendChatState.error({required String? message}) =
      SendChatStateError;
  const factory SendChatState.unAuthenticated() = SendChatStateUnAuthenticated;
  const factory SendChatState.noInternet() = SendChatStateNoInternet;
  const factory SendChatState.typingStatusUpdated({required bool? isTyping}) =
      SendChatStateTypingStatusUpdated;
}
