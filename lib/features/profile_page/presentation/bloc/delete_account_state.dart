part of 'delete_account_bloc.dart';

@freezed
class DeleteAccountState with _$DeleteAccountState {
  const factory DeleteAccountState.initial() = DeleteAccountStateInitial;
  const factory DeleteAccountState.loading() = DeleteAccountStateLoading;
  const factory DeleteAccountState.success() = DeleteAccountStateSuccess;
  const factory DeleteAccountState.failure({required String errorMessage}) =
      DeleteAccountStateFailure;
  const factory DeleteAccountState.unauthenticated({
    required String errorMessage,
  }) = DeleteAccountStateUnauthenticated;
  const factory DeleteAccountState.noInternet() = DeleteAccountStateNoInternet;
}
