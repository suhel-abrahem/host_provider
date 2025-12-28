import '/core/data_state/data_state.dart';
import '/core/usecase/usecase.dart';
import '/features/chat/data/models/chat_model.dart';
import '/features/chat/domain/entities/chats/chats_entity.dart';

import '../repositories/chat_repository.dart';

class GetChatsUsecase
    implements UseCase<DataState<List<ChatsEntity?>?>?, ChatModel> {
  final ChatRepository chatRepository;
  GetChatsUsecase(this.chatRepository);
  @override
  Future<DataState<List<ChatsEntity?>?>?> call({ChatModel? params}) async {
    return await chatRepository.getChats(params);
  }
}
