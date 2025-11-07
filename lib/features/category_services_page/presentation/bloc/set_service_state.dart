part of 'set_service_bloc.dart';

@freezed
class SetServiceState with _$SetServiceState {
  const factory SetServiceState.initial() = SetServiceStateInitial;
  const factory SetServiceState.noInternet() = SetServiceStateNoInternet;
  const factory SetServiceState.loading() = SetServiceStateLoading;
  const factory SetServiceState.error() = SetServiceStateError;
  const factory SetServiceState.setError({ServiceEntity? serviceEntity}) =
      SetServiceStateSetError;
  const factory SetServiceState.SetServiceStateAlreadyExist({
    ServiceEntity? serviceEntity,
  }) = SetServiceStateSetServiceStateAlreadyExist;
  const factory SetServiceState.added(ServiceEntity? serviceEntity) =
      SetServiceStateAdded;
  const factory SetServiceState.updated(ServiceEntity? serviceEntity) =
      SetServiceStateUpdated;
  const factory SetServiceState.deleted(ServiceEntity? serviceEntity) =
      SetServiceStateDeleted;
  const factory SetServiceState.unAuthorized() = SetServiceStateUnAuthorized;
}
