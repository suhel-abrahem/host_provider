import '../../../../core/data_state/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/models/get_service_model.dart';
import '../../../../core/resource/common_entity/service_entity.dart';
import '../repositories/category_services_repository.dart';

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
