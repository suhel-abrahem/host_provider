import 'package:hosta_provider/features/categories_page/domain/entities/service_entity.dart';

import '../../../../core/data_state/data_state.dart';

abstract class CategoriesPageRepository {
  Future<DataState<ServiceEntity?>?> getServices(String? languageCode);
  Future<DataState<void>?> setService();
}
