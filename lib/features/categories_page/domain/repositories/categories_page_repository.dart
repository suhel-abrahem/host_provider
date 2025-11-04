import 'package:hosta_provider/features/categories_page/data/models/get_service_model.dart';
import 'package:hosta_provider/features/categories_page/domain/entities/category_entity.dart';
import 'package:hosta_provider/features/categories_page/domain/entities/service_entity.dart';

import '../../../../core/data_state/data_state.dart';
import '../../data/models/get_category_model.dart';

abstract class CategoriesPageRepository {
  Future<DataState<List<ServiceEntity?>?>?> getServices(
    GetServiceModel? getServiceModel,
  );
  Future<DataState<List<CategoryEntity?>?>?> getCategories(
    GetCategoryModel? getServiceModel,
  );
  Future<DataState<void>?> setService();
}
