part of 'unread_count_bloc.dart';

@freezed
class UnreadCountEvent with _$UnreadCountEvent {
  const factory UnreadCountEvent.started() = UnreadCountEventStarted;
  const factory UnreadCountEvent.getNotificationUnreadCount() =
      UnreadCountEventGetNotificationUnreadCount;
  const factory UnreadCountEvent.getMessageUnreadCount() =
      UnreadCountEventGetMessageUnreadCount;
  const factory UnreadCountEvent.getTicketUnreadCount() =
      UnreadCountEventGetTicketUnreadCount;
}
