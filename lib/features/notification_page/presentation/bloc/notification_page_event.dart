part of 'notification_page_bloc.dart';

@freezed
class NotificationPageEvent with _$NotificationPageEvent {
  const factory NotificationPageEvent.started() = NotificationPageEventStarted;
  const factory NotificationPageEvent.getNotifications({
    required NotificationModel? model,
  }) = NotificationPageEventGetNotifications;
  const factory NotificationPageEvent.readNotification({
    required NotificationModel? model,
  }) = NotificationPageEventReadNotification;
  const factory NotificationPageEvent.readAllNotification() =
      NotificationPageEventReadAllNotification;
}
