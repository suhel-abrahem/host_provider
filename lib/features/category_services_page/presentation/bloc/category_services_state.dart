part of 'category_services_bloc.dart';

@freezed
class CategoryServicesState with _$CategoryServicesState {
  const factory CategoryServicesState.initial() = CategoryServicesStateInitial;
  const factory CategoryServicesState.noInternet() =
      CategoryServicesStateNoInternet;
  const factory CategoryServicesState.loading() = CategoryServicesStateLoading;
  const factory CategoryServicesState.error() = CategoryServicesStateError;
  const factory CategoryServicesState.got(List<ServiceEntity?>? serviceEntity) =
      CategoryServicesStateGot;
  const factory CategoryServicesState.unAuthorized() =
      CategoryServicesStateUnAuthorized;
}
