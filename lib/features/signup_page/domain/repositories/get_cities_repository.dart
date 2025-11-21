import '../../../../core/data_state/data_state.dart';
import '../../data/models/city_model.dart';
import '../entities/city_entity.dart';

abstract class GetCitiesRepository {
  Future<DataState<List<CityEntity?>?>?> getCities({
    required CityModel? cityModel,
  });
}
