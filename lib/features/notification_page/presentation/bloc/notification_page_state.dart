part of 'notification_page_bloc.dart';

@freezed
class NotificationPageState with _$NotificationPageState {
  const factory NotificationPageState.initial() = NotificationPageStateInitial;
  const factory NotificationPageState.loading() = NotificationPageStateLoading;
  const factory NotificationPageState.loaded({
    required List<NotificationEntity?>? newNotifications,
    required List<NotificationEntity?>? todayNotifications,
    required List<NotificationEntity?>? earlierNotifications,
  }) = NotificationPageStateLoaded;
  const factory NotificationPageState.error({required String message}) =
      NotificationPageStateError;
  const factory NotificationPageState.readNotificationSuccess() =
      NotificationPageStateReadNotificationSuccess;
  const factory NotificationPageState.readAllNotificationSuccess() =
      NotificationPageStateReadAllNotificationSuccess;
  const factory NotificationPageState.setReadNotificationError({
    required String message,
  }) = NotificationPageStateSetReadNotificationError;
  const factory NotificationPageState.noData() = NotificationPageStateNoData;
  const factory NotificationPageState.noInternetConnection() =
      NotificationPageStateNoInternetConnection;
  const factory NotificationPageState.unauthenticated() =
      NotificationPageStateUnauthenticated;
}
