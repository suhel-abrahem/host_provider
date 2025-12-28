part of 'get_chat_bloc.dart';

@freezed
class GetChatEvent with _$GetChatEvent {
  const factory GetChatEvent.started() = GetChatEventStarted;
  const factory GetChatEvent.getChats({required ChatModel? chatModel}) =
      GetChatEventGetChats;
  const factory GetChatEvent.getChatDetails({required ChatModel? chatModel}) =
      GetChatEventGetChatDetails;
}
