part of 'login_bloc_bloc.dart';

@freezed
abstract class LoginBlocState with _$LoginBlocState {
  const factory LoginBlocState.loginStateInitial() = LoginStateInitial;
  const factory LoginBlocState.loginStateLoading() = LoginStateLoading;
  const factory LoginBlocState.unAuthorized() = LoginStateUnAuthorized;
  const factory LoginBlocState.tooManyRequests({
    required LoginStateEntity? loginStateEntity,
  }) = LoginStateTooManyRequests;
  const factory LoginBlocState.loginStateLoaded({
    required LoginStateEntity? loginStateEntity,
  }) = LoginStateLoaded;
  const factory LoginBlocState.loginStateError({required String? message}) =
      LoginStateError;
  const factory LoginBlocState.loginStateNoInternet() = LoginStateNoInternet;
  const factory LoginBlocState.otpRequested({
    required LoginStateEntity? loginStateEntity,
  }) = LoginStateOtpRequested;
}
