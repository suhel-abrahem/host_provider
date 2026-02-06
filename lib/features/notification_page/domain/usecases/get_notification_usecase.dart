import '/core/data_state/data_state.dart';
import '/core/usecase/usecase.dart';
import '/features/notification_page/data/models/notification_model.dart';
import '/features/notification_page/domain/entities/notification_entity.dart';

import '../repositories/notification_repository.dart';

class GetNotificationUseCase
    implements
        UseCase<DataState<List<NotificationEntity?>?>?, NotificationModel> {
  final NotificationRepository _repository;
  GetNotificationUseCase(this._repository);
  @override
  Future<DataState<List<NotificationEntity?>?>?> call({
    NotificationModel? params,
  }) async {
    return await _repository.getNotifications(model: params);
  }
}
