import 'package:hosta_provider/core/data_state/data_state.dart';
import 'package:hosta_provider/core/usecase/usecase.dart';
import 'package:hosta_provider/features/categories_page/domain/repositories/categories_page_repository.dart';

import '../../data/models/get_category_model.dart';
import '../entities/category_entity.dart';

class GetCategoryUsecase
    implements UseCase<DataState<List<CategoryEntity?>?>?, GetCategoryModel> {
  final CategoriesPageRepository _categoriesPageRepository;

  GetCategoryUsecase({
    required CategoriesPageRepository categoriesPageRepository,
  }) : _categoriesPageRepository = categoriesPageRepository;
  @override
  Future<DataState<List<CategoryEntity?>?>?> call({
    GetCategoryModel? params,
  }) async {
    return await _categoriesPageRepository.getCategories(params);
  }
}
