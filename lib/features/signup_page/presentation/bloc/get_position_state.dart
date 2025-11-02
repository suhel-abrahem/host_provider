part of 'get_position_bloc.dart';

@freezed
class GetPositionState with _$GetPositionState {
  const factory GetPositionState.initial() = GetPositionStateInitial;
  const factory GetPositionState.loading() = GetPositionStateLoading;
  const factory GetPositionState.locationPermissionDenied() =
      GetPositionStateLocationPermissionDenied;
  const factory GetPositionState.locationPermissionDeniedForever() =
      GetPositionStateLocationPermissionDeniedForever;
  const factory GetPositionState.locationDisabled() =
      GetPositionStateLocationDisabled;
  const factory GetPositionState.got({PositionEntity? positionEntity}) =
      GetPositionStateGot;
  const factory GetPositionState.error() = GetPositionStateError;
}
