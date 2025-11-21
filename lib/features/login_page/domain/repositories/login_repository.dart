import '../../data/models/login_state_model.dart';
import '../entities/login_state_entity.dart';

import '../../../../core/data_state/data_state.dart';

abstract class LoginRepository {
  Future<DataState<LoginStateEntity?>?> loginUser({
    required LoginStateModel? loginStateModel,
  });
}
