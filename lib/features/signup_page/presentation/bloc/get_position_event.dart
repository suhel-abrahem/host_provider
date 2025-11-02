part of 'get_position_bloc.dart';

@freezed
class GetPositionEvent with _$GetPositionEvent {
  const factory GetPositionEvent.started() = GetPositionEventStarted;
  const factory GetPositionEvent.get() = GetPositionEventGet;
}
