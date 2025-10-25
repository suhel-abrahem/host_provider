import 'package:hosta_provider/core/data_state/data_state.dart';
import 'package:hosta_provider/core/usecase/usecase.dart';
import 'package:hosta_provider/features/categories_page/domain/entities/service_entity.dart';
import 'package:hosta_provider/features/categories_page/domain/repositories/categories_page_repository.dart';

class GetServicesUsecase
    implements UseCase<DataState<ServiceEntity?>?, String?> {
  final CategoriesPageRepository _categoriesPageRepository;

  GetServicesUsecase({
    required CategoriesPageRepository categoriesPageRepository,
  }) : _categoriesPageRepository = categoriesPageRepository;

  @override
  Future<DataState<ServiceEntity?>?> call({String? params}) {
    return _categoriesPageRepository.getServices(params);
  }
}
