import '/core/data_state/data_state.dart';
import '/features/notification_page/data/models/notification_model.dart';

import '../entities/notification_entity.dart';

abstract class NotificationRepository {
  Future<DataState<List<NotificationEntity?>?>?> getNotifications({
    NotificationModel? model,
  });
  Future<DataState<void>?> readNotification({NotificationModel? model});
  Future<DataState<void>?> readAllNotification({NotificationModel? model});
}
