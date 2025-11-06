part of 'category_services_bloc.dart';

@freezed
class CategoryServicesEvent with _$CategoryServicesEvent {
  const factory CategoryServicesEvent.started() = CategoryServicesEventStarted;
  const factory CategoryServicesEvent.get(GetServiceModel? getServiceModel) =
      CategoryServicesEventGet;
  const factory CategoryServicesEvent.set(SetServiceModel? setServiceModel) =
      CategoryServicesEventSet;
}
