part of 'login_bloc_bloc.dart';

@freezed
abstract class LoginBlocEvent with _$LoginBlocEvent {
  const factory LoginBlocEvent.loginEventStarted() = LoginEventStarted;
  const factory LoginBlocEvent.loginUserEvent({
    required LoginStateModel? loginStateModel,
  }) = LoginUserEvent;
}
