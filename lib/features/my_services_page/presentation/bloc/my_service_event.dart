part of 'my_service_bloc.dart';

@freezed
class MyServiceEvent with _$MyServiceEvent {
  const factory MyServiceEvent.started() = MyServiceEventStarted;
  const factory MyServiceEvent.get({GetServiceModel? getServiceModel}) =
      MyServiceEventGet;
}
