import 'package:hosta_provider/core/data_state/data_state.dart';
import 'package:hosta_provider/core/usecase/usecase.dart';
import 'package:hosta_provider/features/signup_page/data/models/country_model.dart';
import 'package:hosta_provider/features/signup_page/domain/entities/country_entity.dart';
import 'package:hosta_provider/features/signup_page/domain/repositories/get_country_repository.dart';

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
