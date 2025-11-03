import 'package:hosta_provider/core/data_state/data_state.dart';
import 'package:hosta_provider/features/login_page/domain/entities/login_state_entity.dart';
import 'package:hosta_provider/features/otp_page/data/models/otp_model.dart';

abstract class OtpVerifyRepository {
  Future<DataState<LoginStateEntity?>?> verify({OtpModel? otpModel});
}
