part of 'get_countries_bloc.dart';

@freezed
abstract class GetCountriesEvent with _$GetCountriesEvent {
  const factory GetCountriesEvent.started(bool? canAccessAddress) =
      GetCountriesEventStarted;
  const factory GetCountriesEvent.getCountries(CountryModel? countryModel) =
      GetCountriesEventGetCountries;
}
