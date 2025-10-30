import 'package:hosta_provider/core/data_state/data_state.dart';
import 'package:hosta_provider/features/signup_page/data/models/signup_model.dart';
import 'package:hosta_provider/features/signup_page/domain/entities/signup_entity.dart';

abstract class SignupRepository {
  Future<DataState<SignupEntity?>?> signup({required SignupModel? signupModel});
}
