import '/core/data_state/data_state.dart';
import '/core/usecase/usecase.dart';

import '../../repositories/unread_notification_and_message_repository/unread_notification_and_message_repository.dart';

class GetUnreadTicketsUsecase implements UseCase<DataState<int?>?, String?> {
  final UnreadNotificationAndMessageRepository
  unreadNotificationAndMessageRepository;
  GetUnreadTicketsUsecase({
    required this.unreadNotificationAndMessageRepository,
  });
  @override
  Future<DataState<int?>?> call({String? params}) async {
    return await unreadNotificationAndMessageRepository.getUnreadTicketCount(
      params,
    );
  }
}
