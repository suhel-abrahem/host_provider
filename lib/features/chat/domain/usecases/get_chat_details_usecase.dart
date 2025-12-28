import '../../../../core/data_state/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/models/chat_model.dart';
import '../entities/chat/chat_entity.dart';
import '../repositories/chat_repository.dart';

class GetChatDetailsUsecase
    implements UseCase<DataState<ChatEntity?>?, ChatModel> {
  final ChatRepository chatRepository;
  GetChatDetailsUsecase(this.chatRepository);
  @override
  Future<DataState<ChatEntity?>?> call({ChatModel? params}) async {
    return await chatRepository.getChatDetails(params);
  }
}
