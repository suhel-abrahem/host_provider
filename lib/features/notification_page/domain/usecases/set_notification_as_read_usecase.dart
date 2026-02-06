import '/core/data_state/data_state.dart';
import '/features/notification_page/data/models/notification_model.dart';

import '../../../../core/usecase/usecase.dart';
import '../repositories/notification_repository.dart';

class SetNotificationAsReadUseCase
    implements UseCase<DataState<void>?, NotificationModel> {
  final NotificationRepository _repository;

  SetNotificationAsReadUseCase(this._repository);
  @override
  Future<DataState<void>?> call({NotificationModel? params}) async {
    return await _repository.readNotification(model: params);
  }
}
