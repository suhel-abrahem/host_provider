import '/features/chat/domain/entities/message/message_entity.dart';

import '../../../../core/data_state/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/models/chat_model.dart';
import '../repositories/chat_repository.dart';

class SendChatUsecase
    implements UseCase<DataState<MessageEntity?>?, ChatModel> {
  final ChatRepository chatRepository;
  SendChatUsecase(this.chatRepository);
  @override
  Future<DataState<MessageEntity?>?> call({ChatModel? params}) async {
    return await chatRepository.sendMessage(params);
  }
}
