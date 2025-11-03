part of 'signup_bloc_bloc.dart';

@freezed
abstract class SignupBlocState with _$SignupBlocState {
  const factory SignupBlocState.initial() = SignupInitialState;
  const factory SignupBlocState.signupSignedUp({
    required SignupInfoEntity? signupInfoEntity,
  }) = SignUpSignedUpState;
  const factory SignupBlocState.loading() = SignupLoadingState;
  const factory SignupBlocState.error(SignupErrorEntity? signupErrorEntity) =
      SignupErrorState;
}
