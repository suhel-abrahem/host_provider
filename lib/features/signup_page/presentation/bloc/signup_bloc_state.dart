part of 'signup_bloc_bloc.dart';

@freezed
abstract class SignupBlocState with _$SignupBlocState {
  const factory SignupBlocState.initial() = SignupInitialState;
  const factory SignupBlocState.signupSignedUp({
    required SignupEntity? signupEntity,
  }) = SignUpSignedUpState;
  const factory SignupBlocState.loading() = SignupLoadingState;
  const factory SignupBlocState.error(SignupEntity? signupEntity) =
      SignupErrorState;
}
