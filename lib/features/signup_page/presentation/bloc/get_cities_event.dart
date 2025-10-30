part of 'get_cities_bloc.dart';

@freezed
abstract class GetCitiesEvent with _$GetCitiesEvent {
  const factory GetCitiesEvent.started() = GetCitiesEventStarted;
  const factory GetCitiesEvent.getCities(CityModel? cityModel) =
      GetCitiesEventGetCities;
}
