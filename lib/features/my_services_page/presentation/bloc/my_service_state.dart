part of 'my_service_bloc.dart';

@freezed
class MyServiceState with _$MyServiceState {
  const factory MyServiceState.initial() = MyServiceStateInitial;
  const factory MyServiceState.noInternet() = MyServiceStateNoInternet;
  const factory MyServiceState.loading() = MyServiceStateLoading;
  const factory MyServiceState.getError() = MyServiceStateGetError;

  const factory MyServiceState.got(List<ServiceEntity?>? serviceEntity) =
      MyServiceStateGot;

  const factory MyServiceState.unAuthorized() = MyServiceStateUnAuthorized;
  const factory MyServiceState.noData() = MyServiceStateNoData;
}
