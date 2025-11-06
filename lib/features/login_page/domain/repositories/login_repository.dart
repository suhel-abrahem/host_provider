import 'package:hosta_provider/features/login_page/data/models/login_state_model.dart';
import 'package:hosta_provider/features/login_page/domain/entities/login_state_entity.dart';

import '../../../../core/data_state/data_state.dart';

abstract class LoginRepository {
  Future<DataState<LoginStateEntity?>?> loginUser({
    required LoginStateModel? loginStateModel,
  });
}
