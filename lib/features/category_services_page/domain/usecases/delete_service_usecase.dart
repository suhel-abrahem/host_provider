import '../../../../core/data_state/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/models/set_service_model.dart';
import '../repositories/category_services_repository.dart';

class DeleteServiceUsecase
    implements UseCase<DataState<void>?, SetServiceModel> {
  final CategoryServicesRepository _categoryServicesRepository;

  DeleteServiceUsecase({
    required CategoryServicesRepository categoryServicesRepository,
  }) : _categoryServicesRepository = categoryServicesRepository;
  @override
  Future<DataState<void>?> call({SetServiceModel? params}) async {
    return await _categoryServicesRepository.deleteService(params);
  }
}
