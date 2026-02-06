import '/core/data_state/data_state.dart';
import '/core/usecase/usecase.dart';

import '../../repositories/unread_notification_and_message_repository/unread_notification_and_message_repository.dart';

class GetUnreadeNotificatinUsecase
    implements UseCase<DataState<int?>?, String?> {
  final UnreadNotificationAndMessageRepository? repository;

  GetUnreadeNotificatinUsecase({required this.repository});

  @override
  Future<DataState<int?>?> call({String? params}) async {
    return await repository?.getUnreadNotificationCount(params);
  }
}
