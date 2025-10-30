import 'package:hosta_provider/core/data_state/data_state.dart';
import 'package:hosta_provider/core/usecase/usecase.dart';
import 'package:hosta_provider/features/signup_page/data/models/city_model.dart';
import 'package:hosta_provider/features/signup_page/domain/entities/city_entity.dart';
import 'package:hosta_provider/features/signup_page/domain/repositories/get_cities_repository.dart';

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
