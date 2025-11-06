part of 'category_services_bloc.dart';

@freezed
class CategoryServicesState with _$CategoryServicesState {
  const factory CategoryServicesState.initial() = CategoryServicesStateInitial;
  const factory CategoryServicesState.noInternet() =
      CategoryServicesStateNoInternet;
  const factory CategoryServicesState.loading() = CategoryServicesStateLoading;
  const factory CategoryServicesState.getError({ServiceEntity? serviceEntity}) =
      CategoryServicesStateGetError;

  const factory CategoryServicesState.got(List<ServiceEntity?>? serviceEntity) =
      CategoryServicesStateGot;
  const factory CategoryServicesState.added(ServiceEntity? serviceEntity) =
      CategoryServicesStateAdded;
  const factory CategoryServicesState.unAuthorized() =
      CategoryServicesStateUnAuthorized;
}
