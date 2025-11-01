part of 'get_cities_bloc.dart';

@freezed
abstract class GetCitiesState with _$GetCitiesState {
  const factory GetCitiesState.initial() = GetCitiesStateInitial;
  const factory GetCitiesState.got(List<CityEntity?>? cityEntity) =
      GetCitiesStateGot;
  const factory GetCitiesState.loading() = GetCitiesStateLoading;

  const factory GetCitiesState.error(String? message) = GetCitiesStateError;
  const factory GetCitiesState.noInternet() = GetCitiesStateNoInternet;
}
