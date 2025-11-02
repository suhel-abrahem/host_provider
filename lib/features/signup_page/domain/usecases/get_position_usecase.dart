import 'package:hosta_provider/core/data_state/data_state.dart';
import 'package:hosta_provider/core/usecase/usecase.dart';
import 'package:hosta_provider/features/signup_page/domain/entities/position_entity.dart';
import 'package:hosta_provider/features/signup_page/domain/repositories/get_position_repository.dart';

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
