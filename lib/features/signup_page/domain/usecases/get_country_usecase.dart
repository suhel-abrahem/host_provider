import '../../../../core/data_state/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/models/country_model.dart';
import '../entities/country_entity.dart';
import '../repositories/get_country_repository.dart';

class GetCountryUsecase
    implements UseCase<DataState<List<CountryEntity?>?>?, CountryModel?> {
  final GetCountryRepository _getCountryRepository;

  GetCountryUsecase({required GetCountryRepository getCountryRepository})
    : _getCountryRepository = getCountryRepository;
  @override
  Future<DataState<List<CountryEntity?>?>?> call({CountryModel? params}) {
    return _getCountryRepository.getCountry(countryModel: params);
  }
}
