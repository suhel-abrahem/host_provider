part of 'get_profile_bloc.dart';

@freezed
class GetProfileEvent with _$GetProfileEvent {
  const factory GetProfileEvent.started() = GetProfileEventStarted;
  const factory GetProfileEvent.getProfile({
    required ProfileModel? profileModel,
  }) = GetProfileEventGetProfile;
  const factory GetProfileEvent.logout({required ProfileModel? profileModel}) =
      GetProfileEventLogout;
  const factory GetProfileEvent.updateProfile({
    required ProfileModel? profileModel,
  }) = GetProfileEventUpdateProfile;
}
