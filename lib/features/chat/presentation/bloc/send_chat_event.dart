part of 'send_chat_bloc.dart';

@freezed
class SendChatEvent with _$SendChatEvent {
  const factory SendChatEvent.started() = SendChatEventStarted;
  const factory SendChatEvent.sendChat({required ChatModel? chatModel}) =
      SendChatEventSendChat;
  const factory SendChatEvent.typingStatus({required ChatModel? chatModel}) =
      SendChatEventTypingStatus;
}
