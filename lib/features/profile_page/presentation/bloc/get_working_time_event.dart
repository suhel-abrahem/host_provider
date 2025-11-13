part of 'get_working_time_bloc.dart';

@freezed
class GetWorkingTimeEvent with _$GetWorkingTimeEvent {
  const factory GetWorkingTimeEvent.started() = GetWorkingTimeEventStarted;
  const factory GetWorkingTimeEvent.getWorkingTime({
    ProfileModel? profileModel,
  }) = GetWorkingTimeEventGetWorkingTime;
  const factory GetWorkingTimeEvent.setWorkingTime({
    SetWorkingHoursModel? setWorkingHoursModel,
  }) = GetWorkingTimeEventSetWorkingTime;
  const factory GetWorkingTimeEvent.updateWorkingTime({
    SetWorkingHoursModel? setWorkingHoursModel,
  }) = GetWorkingTimeEventUpdateWorkingTime;
}
