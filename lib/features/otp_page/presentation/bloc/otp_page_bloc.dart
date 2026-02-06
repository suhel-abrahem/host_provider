import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/data_state/data_state.dart';
import '../../../login_page/domain/entities/login_state_entity.dart';
import '../../data/models/otp_model.dart';
import '../../domain/usecases/otp_resend_usecase.dart';
import '../../domain/usecases/otp_verify_usecase.dart';

part 'otp_page_bloc.freezed.dart';
part 'otp_page_event.dart';
part 'otp_page_state.dart';

class OtpPageBloc extends Bloc<OtpPageEvent, OtpPageState> {
  final OtpVerifyUsecase _otpVerifyUsecase;
  final OtpResendUseCase _otpResendUseCase;
  OtpPageBloc(this._otpVerifyUsecase, this._otpResendUseCase)
    : super(OtpPageState.initial()) {
    on<OtpPageEventStarted>((event, emit) {});
    on<OtpPageEventVerify>((event, emit) async {
      emit(OtpPageState.loading());
      await _otpVerifyUsecase.call(params: event.otpModel).then((onValue) {
        if (onValue is DataSuccess) {
          emit(OtpPageState.verified(onValue?.data));
        } else if (onValue is TooManyRequestsDataState) {
          emit(OtpPageState.tooManyRequests(loginStateEntity: onValue?.data));
        } else {
          emit(OtpPageState.error());
        }
      });
    });
    on<OtpPageEventResend>((event, emit) async {
      emit(OtpPageState.loading());
      await _otpResendUseCase.call(params: event.otpModel).then((onValue) {
        if (onValue is DataSuccess) {
          emit(OtpPageState.resent(onValue?.data));
        } else {
          emit(OtpPageState.error());
        }
      });
    });
  }
}
