import '../../../../core/resource/common_entity/service_entity.dart';
import '../../data/models/set_service_model.dart';

import '../../../../core/data_state/data_state.dart';
import '../../data/models/get_service_model.dart';

abstract class CategoryServicesRepository {
  Future<DataState<ServiceEntity?>?> setService(
    SetServiceModel? setServiceModel,
  );
  Future<DataState<ServiceEntity?>?> updateService(
    SetServiceModel? setServiceModel,
  );
  Future<DataState<ServiceEntity?>?> deleteService(
    SetServiceModel? setServiceModel,
  );
  Future<DataState<List<ServiceEntity?>?>?> getServices(
    GetServiceModel? getServiceModel,
  );
}
