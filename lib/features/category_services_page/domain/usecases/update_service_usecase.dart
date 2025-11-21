import '../../../../core/data_state/data_state.dart';
import '../../../../core/resource/common_entity/service_entity.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/models/set_service_model.dart';
import '../repositories/category_services_repository.dart';

class UpdateServiceUsecase
    implements UseCase<DataState<ServiceEntity?>?, SetServiceModel?> {
  final CategoryServicesRepository _categoryServicesRepository;

  UpdateServiceUsecase({
    required CategoryServicesRepository categoryServicesRepository,
  }) : _categoryServicesRepository = categoryServicesRepository;
  @override
  Future<DataState<ServiceEntity?>?> call({SetServiceModel? params}) async {
    return await _categoryServicesRepository.updateService(params);
  }
}
