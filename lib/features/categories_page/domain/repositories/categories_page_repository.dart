import '../entities/category_entity.dart';

import '../../../../core/data_state/data_state.dart';
import '../../data/models/get_category_model.dart';

abstract class CategoriesPageRepository {
  Future<DataState<List<CategoryEntity?>?>?> getCategories(
    GetCategoryModel? getServiceModel,
  );
}
