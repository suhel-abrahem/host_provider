import 'package:hosta_provider/core/data_state/data_state.dart';
import 'package:hosta_provider/core/usecase/usecase.dart';
import 'package:hosta_provider/features/category_services_page/data/models/set_service_model.dart';
import 'package:hosta_provider/features/category_services_page/domain/repositories/category_services_repository.dart';

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
