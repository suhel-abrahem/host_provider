part of 'unread_count_bloc.dart';

@freezed
class UnreadCountState with _$UnreadCountState {
  const factory UnreadCountState.initial() = UnreadCountStateInitial;
  const factory UnreadCountState.loading() = UnreadCountStateLoading;
  const factory UnreadCountState.notificationUnreadCountLoaded({
    required int? count,
  }) = UnreadCountStateNotificationUnreadCountLoaded;
  const factory UnreadCountState.messageUnreadCountLoaded({
    required int? count,
  }) = UnreadCountStateMessageUnreadCountLoaded;
  const factory UnreadCountState.ticketUnreadCountLoaded({
    required int? count,
  }) = UnreadCountStateTicketUnreadCountLoaded;
  const factory UnreadCountState.error({required String error}) =
      UnreadCountStateError;
  const factory UnreadCountState.unauthenticated({required String error}) =
      UnreadCountStateUnauthenticated;
  const factory UnreadCountState.noInternet() = UnreadCountStateNoInternet;
}
