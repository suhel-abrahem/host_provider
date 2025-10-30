part of 'signup_bloc_bloc.dart';

@freezed
abstract class SignupBlocEvent with _$SignupBlocEvent {
  const factory SignupBlocEvent.signupStartEvent() = SignupStartEvent;
  const factory SignupBlocEvent.signupSignedInEvent({
    required SignupModel? signupModel,
  }) = SignupSignedInEvent;
}
