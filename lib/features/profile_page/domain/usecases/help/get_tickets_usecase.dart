import '/core/data_state/data_state.dart';
import '/core/usecase/usecase.dart';
import '/features/profile_page/domain/entities/help/tickets_entity.dart';

import '../../../data/models/help/get_tickets_model.dart';
import '../../repositories/help/tickets_repository.dart';

class GetTicketsUsecase
    implements UseCase<DataState<List<TicketsEntity?>?>?, GetTicketsModel?> {
  final TicketsRepository _repository;
  GetTicketsUsecase(this._repository);
  @override
  Future<DataState<List<TicketsEntity?>?>?> call({
    GetTicketsModel? params,
  }) async {
    return await _repository.getTickets(params);
  }
}
