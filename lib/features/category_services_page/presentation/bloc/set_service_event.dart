part of 'set_service_bloc.dart';

@freezed
class SetServiceEvent with _$SetServiceEvent {
  const factory SetServiceEvent.started() = SetServiceEventStarted;
  const factory SetServiceEvent.set(SetServiceModel? setServiceModel) =
      SetServiceEventSet;
}
