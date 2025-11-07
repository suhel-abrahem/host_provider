part of 'set_service_bloc.dart';

@freezed
class SetServiceEvent with _$SetServiceEvent {
  const factory SetServiceEvent.started() = SetServiceEventStarted;
  const factory SetServiceEvent.set(SetServiceModel? setServiceModel) =
      SetServiceEventSet;
  const factory SetServiceEvent.update(SetServiceModel? setServiceModel) =
      SetServiceEventUpdate;
  const factory SetServiceEvent.delete(SetServiceModel? setServiceModel) =
      SetServiceEventDelete;
}
