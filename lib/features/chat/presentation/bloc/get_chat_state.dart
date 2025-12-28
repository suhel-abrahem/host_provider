part of 'get_chat_bloc.dart';

@freezed
class GetChatState with _$GetChatState {
  const factory GetChatState.initial() = GetChatStateInitial;
  const factory GetChatState.loading() = GetChatStateLoading;
  const factory GetChatState.getChatStateLoaded({
    required List<ChatsEntity?>? chatModel,
  }) = GetChatStateLoaded;
  const factory GetChatState.getChatDetailsLoaded({
    required ChatEntity? chatEntity,
  }) = GetChatStateGetChatDetailsLoaded;
  const factory GetChatState.error({required String? message}) =
      GetChatStateError;
  const factory GetChatState.unAuthenticated() = GetChatStateUnAuthenticated;
  const factory GetChatState.noInternet() = GetChatStateNoInternet;
  const factory GetChatState.noChats() = GetChatStateNoChats;
}
