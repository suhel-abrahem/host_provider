part of 'get_countries_bloc.dart';

@freezed
abstract class GetCountriesState with _$GetCountriesState {
  const factory GetCountriesState.initial() = GetCountriesStateInitial;
  const factory GetCountriesState.loading() = GetCountriesStateLoading;
  const factory GetCountriesState.got(List<CountryEntity?>? countryEntity) =
      GetCountriesStateGot;

  const factory GetCountriesState.error(String? message) =
      GetCountriesStateError;
  const factory GetCountriesState.noInternet() = GetCountriesStateNoInternet;
}
