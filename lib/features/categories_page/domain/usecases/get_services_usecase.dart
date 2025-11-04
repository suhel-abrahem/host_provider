import 'package:hosta_provider/core/data_state/data_state.dart';
import 'package:hosta_provider/core/usecase/usecase.dart';
import 'package:hosta_provider/features/categories_page/data/models/get_service_model.dart';
import 'package:hosta_provider/features/categories_page/domain/entities/service_entity.dart';
import 'package:hosta_provider/features/categories_page/domain/repositories/categories_page_repository.dart';

class GetServicesUsecase
    implements UseCase<DataState<List<ServiceEntity?>?>?, GetServiceModel?> {
  final CategoriesPageRepository _categoriesPageRepository;

  GetServicesUsecase({
    required CategoriesPageRepository categoriesPageRepository,
  }) : _categoriesPageRepository = categoriesPageRepository;

  @override
  Future<DataState<List<ServiceEntity?>?>?> call({GetServiceModel? params}) {
    return _categoriesPageRepository.getServices(params);
  }
}
