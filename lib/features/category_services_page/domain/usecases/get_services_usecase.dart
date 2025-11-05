import 'package:hosta_provider/core/data_state/data_state.dart';
import 'package:hosta_provider/core/usecase/usecase.dart';
import 'package:hosta_provider/features/category_services_page/data/models/get_service_model.dart';
import 'package:hosta_provider/core/resource/common_entity/service_entity.dart';
import 'package:hosta_provider/features/categories_page/domain/repositories/categories_page_repository.dart';
import 'package:hosta_provider/features/category_services_page/domain/repositories/category_services_repository.dart';

class GetServicesUsecase
    implements UseCase<DataState<List<ServiceEntity?>?>?, GetServiceModel?> {
  final CategoryServicesRepository _categoryServicesRepository;

  GetServicesUsecase({
    required CategoryServicesRepository categoryServicesRepository,
  }) : _categoryServicesRepository = categoryServicesRepository;

  @override
  Future<DataState<List<ServiceEntity?>?>?> call({
    GetServiceModel? params,
  }) async {
    return await _categoryServicesRepository.getServices(params);
  }
}
