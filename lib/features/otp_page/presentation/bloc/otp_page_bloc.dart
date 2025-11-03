import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hosta_provider/core/data_state/data_state.dart';
import 'package:hosta_provider/features/login_page/domain/entities/login_state_entity.dart';
import 'package:hosta_provider/features/otp_page/data/models/otp_model.dart';
import 'package:hosta_provider/features/otp_page/domain/usecases/otp_verify_usecase.dart';

part 'otp_page_event.dart';
part 'otp_page_state.dart';
part 'otp_page_bloc.freezed.dart';

class OtpPageBloc extends Bloc<OtpPageEvent, OtpPageState> {
  final OtpVerifyUsecase _otpVerifyUsecase;
  OtpPageBloc(this._otpVerifyUsecase) : super(OtpPageState.initial()) {
    on<OtpPageEventStarted>((event, emit) {});
    on<OtpPageEventVerify>((event, emit) async {
      emit(OtpPageState.loading());
      await _otpVerifyUsecase.call(params: event.otpModel).then((onValue) {
        if (onValue is DataSuccess) {
          emit(OtpPageState.verified(onValue?.data));
        } else {
          emit(OtpPageState.error());
        }
      });
    });
  }
}
