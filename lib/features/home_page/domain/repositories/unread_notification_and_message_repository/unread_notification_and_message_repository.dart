import '/core/data_state/data_state.dart';

abstract class UnreadNotificationAndMessageRepository {
  Future<DataState<int?>?> getUnreadNotificationCount(String? token);
  Future<DataState<int?>?> getUnreadMessageCount(String? token);
  Future<DataState<int?>?> getUnreadTicketCount(String? token);
}
