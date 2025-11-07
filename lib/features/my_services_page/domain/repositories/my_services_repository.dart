import 'package:hosta_provider/core/data_state/data_state.dart';
import 'package:hosta_provider/core/resource/common_entity/service_entity.dart';
import 'package:hosta_provider/features/category_services_page/data/models/get_service_model.dart';

abstract class MyServicesRepository {
  Future<DataState<List<ServiceEntity?>?>?> get(
    GetServiceModel? getServiceModel,
  );
}
