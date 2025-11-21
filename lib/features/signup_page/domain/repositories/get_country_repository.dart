import '../../../../core/data_state/data_state.dart';
import '../../data/models/country_model.dart';
import '../entities/country_entity.dart';

abstract class GetCountryRepository {
  Future<DataState<List<CountryEntity?>?>?> getCountry({
    required CountryModel? countryModel,
  });
}
