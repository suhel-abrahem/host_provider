part of 'delete_account_bloc.dart';

@freezed
class DeleteAccountEvent with _$DeleteAccountEvent {
  const factory DeleteAccountEvent.started() = DeleteAccountEventStarted;
  const factory DeleteAccountEvent.deleteAccount({
    required ProfileModel? profileModel,
  }) = DeleteAccountEventDeleteAccount;
}
