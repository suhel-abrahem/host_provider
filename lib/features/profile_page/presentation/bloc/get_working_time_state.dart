part of 'get_working_time_bloc.dart';

@freezed
class GetWorkingTimeState with _$GetWorkingTimeState {
  const factory GetWorkingTimeState.initial() = GetWorkingTimeStateInitial;
  const factory GetWorkingTimeState.loading() = GetWorkingTimeStateLoading;
  const factory GetWorkingTimeState.loaded({
    required List<WorkingHoursEntity?>? workingHours,
  }) = GetWorkingTimeStateLoaded;
  const factory GetWorkingTimeState.error() = GetWorkingTimeStateError;
  const factory GetWorkingTimeState.unauthorized() =
      GetWorkingTimeStateUnauthorized;
  const factory GetWorkingTimeState.noInternet() =
      GetWorkingTimeStateNoInternet;
  const factory GetWorkingTimeState.updated() = GetWorkingTimeStateUpdated;
  const factory GetWorkingTimeState.noData() = GetWorkingTimeStateNoData;
  const factory GetWorkingTimeState.setSuccessfully() =
      GetWorkingTimeStateSetSuccessfully;
  const factory GetWorkingTimeState.setError() = GetWorkingTimeStateSetError;
  const factory GetWorkingTimeState.itemNotFound() =
      GetWorkingTimeStateItemsNotFound;
}
