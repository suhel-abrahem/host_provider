import '../../../../core/data_state/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/models/city_model.dart';
import '../entities/city_entity.dart';
import '../repositories/get_cities_repository.dart';

class GetCitiesUsecase
    implements UseCase<DataState<List<CityEntity?>?>?, CityModel?> {
  final GetCitiesRepository _getCitiesRepository;

  GetCitiesUsecase({required GetCitiesRepository getCitiesRepository})
    : _getCitiesRepository = getCitiesRepository;
  @override
  Future<DataState<List<CityEntity?>?>?> call({CityModel? params}) {
    return _getCitiesRepository.getCities(cityModel: params);
  }
}
