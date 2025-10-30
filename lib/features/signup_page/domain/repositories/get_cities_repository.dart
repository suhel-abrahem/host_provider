import 'package:hosta_provider/core/data_state/data_state.dart';
import 'package:hosta_provider/features/signup_page/data/models/city_model.dart';
import 'package:hosta_provider/features/signup_page/domain/entities/city_entity.dart';
import 'package:hosta_provider/features/signup_page/domain/entities/country_entity.dart';

abstract class GetCitiesRepository {
  Future<DataState<List<CityEntity?>?>?> getCities({
    required CityModel? cityModel,
  });
}
