import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '/core/data_state/data_state.dart';

import '../../data/models/reset_password/request_reset_password_model.dart';
import '../../data/models/reset_password/resend_reset_password_otp_model.dart';
import '../../data/models/reset_password/reset_password_model.dart';
import '../../data/models/reset_password/verify_otp_model.dart';
import '../../domain/entities/reset_password/request_reset_password_entity.dart';
import '../../domain/entities/reset_password/verify_otp_entity.dart';
import '../../domain/usecases/reset_password/request_reset_password_usecase.dart';
import '../../domain/usecases/reset_password/resent_reset_password_otp_usecase.dart';
import '../../domain/usecases/reset_password/reset_password_usecase.dart';
import '../../domain/usecases/reset_password/verify_otp_usecase.dart';

part 'reset_password_event.dart';
part 'reset_password_state.dart';
part 'reset_password_bloc.freezed.dart';

class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  final RequestResetPasswordUsecase _requestResetPasswordUsecase;
  final VerifyOtpUsecase _verifyOtpUsecase;
  final ResetPasswordUsecase _resetPasswordUsecase;
  final ResentResetPasswordOtpUsecase _resentResetPasswordOtpUsecase;
  ResetPasswordBloc(
    this._requestResetPasswordUsecase,
    this._verifyOtpUsecase,
    this._resetPasswordUsecase,
    this._resentResetPasswordOtpUsecase,
  ) : super(ResetPasswordState.initial()) {
    on<ResetPasswordEventStarted>((event, emit) {
      emit(ResetPasswordState.initial());
    });
    on<ResetPasswordEventRequestResetPassword>((event, emit) async {
      emit(ResetPasswordState.loading());

      await _requestResetPasswordUsecase
          .call(params: event.requestResetPasswordModel)
          .then((onValue) {
            if (onValue is DataSuccess) {
              emit(
                ResetPasswordState.requestResetPasswordSuccess(
                  requestResetPasswordEntity: onValue?.data,
                ),
              );
            } else if (onValue is DataError) {
              emit(ResetPasswordState.error(error: onValue?.error ?? ""));
            } else if (onValue is UnauthenticatedDataState) {
              emit(
                ResetPasswordState.unauthenticated(error: onValue?.error ?? ""),
              );
            } else if (onValue is NOInternetDataState) {
              emit(ResetPasswordState.noInternet());
            } else {
              emit(ResetPasswordState.error(error: onValue.toString()));
            }
          });
    });
    on<ResetPasswordEventVerifyOtp>((event, emit) async {
      emit(ResetPasswordState.loading());
      await _verifyOtpUsecase.call(params: event.verifyOtpModel).then((
        onValue,
      ) {
        if (onValue is DataSuccess) {
          emit(
            ResetPasswordState.verifyOtpSuccess(verifyOtpEntity: onValue?.data),
          );
        } else if (onValue is DataError) {
          emit(ResetPasswordState.error(error: onValue?.error ?? ""));
        } else if (onValue is UnauthenticatedDataState) {
          emit(ResetPasswordState.unauthenticated(error: onValue?.error ?? ""));
        } else if (onValue is NOInternetDataState) {
          emit(ResetPasswordState.noInternet());
        } else {
          emit(ResetPasswordState.error(error: onValue.toString()));
        }
      });
    });
    on<ResetPasswordEventResetPassword>((event, emit) async {
      emit(ResetPasswordState.loading());
      await _resetPasswordUsecase.call(params: event.resetPasswordModel).then((
        onValue,
      ) {
        if (onValue is DataSuccess) {
          emit(ResetPasswordState.resetPasswordSuccess());
        } else if (onValue is DataError) {
          emit(ResetPasswordState.error(error: onValue.error ?? ""));
        } else if (onValue is UnauthenticatedDataState) {
          emit(ResetPasswordState.unauthenticated(error: onValue.error ?? ""));
        } else if (onValue is NOInternetDataState) {
          emit(ResetPasswordState.noInternet());
        } else {
          emit(ResetPasswordState.error(error: onValue.toString()));
        }
      });
    });
    on<ResetPasswordEventResentResetPasswordOtp>((event, emit) async {
      emit(ResetPasswordState.loading());
      await _resentResetPasswordOtpUsecase
          .call(params: event.resendResetPasswordOtpModel)
          .then((onValue) {
            if (onValue is DataSuccess) {
              emit(ResetPasswordState.resentResetPasswordOtpSuccess());
            } else if (onValue is DataError) {
              emit(ResetPasswordState.error(error: onValue.error ?? ""));
            } else if (onValue is UnauthenticatedDataState) {
              emit(
                ResetPasswordState.unauthenticated(error: onValue.error ?? ""),
              );
            } else if (onValue is NOInternetDataState) {
              emit(ResetPasswordState.noInternet());
            } else {
              emit(ResetPasswordState.error(error: onValue.toString()));
            }
          });
    });
  }
}
