import 'package:hosta_provider/core/data_state/data_state.dart';
import 'package:hosta_provider/core/resource/common_entity/service_entity.dart';
import 'package:hosta_provider/core/usecase/usecase.dart';
import 'package:hosta_provider/features/category_services_page/data/models/get_service_model.dart';
import 'package:hosta_provider/features/my_services_page/domain/repositories/my_services_repository.dart';

class MyServiceUsecase
    implements UseCase<DataState<List<ServiceEntity?>?>?, GetServiceModel?> {
  final MyServicesRepository _myServicesRepository;

  MyServiceUsecase({required MyServicesRepository myServicesRepository})
    : _myServicesRepository = myServicesRepository;
  @override
  Future<DataState<List<ServiceEntity?>?>?> call({
    GetServiceModel? params,
  }) async {
    return await _myServicesRepository.get(params);
  }
}
