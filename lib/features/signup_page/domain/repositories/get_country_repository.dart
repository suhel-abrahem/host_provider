import 'package:hosta_provider/core/data_state/data_state.dart';
import 'package:hosta_provider/features/signup_page/data/models/country_model.dart';
import 'package:hosta_provider/features/signup_page/domain/entities/country_entity.dart';

abstract class GetCountryRepository {
  Future<DataState<List<CountryEntity?>?>?> getCountry({
    required CountryModel? countryModel,
  });
}
