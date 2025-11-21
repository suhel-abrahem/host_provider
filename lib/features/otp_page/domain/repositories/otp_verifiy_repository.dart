import '../../../../core/data_state/data_state.dart';
import '../../../login_page/domain/entities/login_state_entity.dart';
import '../../data/models/otp_model.dart';

abstract class OtpVerifyRepository {
  Future<DataState<LoginStateEntity?>?> verify({OtpModel? otpModel});
  Future<DataState<LoginStateEntity?>?> resend({OtpModel? otpModel});
}
