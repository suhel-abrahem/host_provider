import '../entities/position_entity.dart';

import '../../../../core/data_state/data_state.dart';

abstract class GetPositionRepository {
  Future<DataState<PositionEntity?>?> getPosition();
}
