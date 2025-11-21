import '../../../../core/data_state/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/position_entity.dart';
import '../repositories/get_position_repository.dart';

class GetPositionUsecase
    implements UseCase<DataState<PositionEntity?>?, NoParams> {
  final GetPositionRepository _getPositionRepository;

  GetPositionUsecase({required GetPositionRepository getPositionRepository})
    : _getPositionRepository = getPositionRepository;
  @override
  Future<DataState<PositionEntity?>?> call({NoParams? params}) {
    return _getPositionRepository.getPosition();
  }
}
