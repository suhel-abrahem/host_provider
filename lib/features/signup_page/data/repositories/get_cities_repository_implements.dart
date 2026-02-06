import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import '../../../../core/constants/api_constant.dart';
import '../../../../core/data_state/data_state.dart';
import '../models/city_model.dart';
import '../../domain/entities/city_entity.dart';
import '../../domain/repositories/get_cities_repository.dart';

import '../../../../core/resource/common_service/common_service.dart';
import '../../../../core/resource/connectivity/check_connectivity.dart';

class GetCitiesRepositoryImplements implements GetCitiesRepository {
  final CheckConnectivity _checkConnectivity;

  GetCitiesRepositoryImplements({required CheckConnectivity checkConnectivity})
    : _checkConnectivity = checkConnectivity;
  @override
  Future<DataState<List<CityEntity?>?>?> getCities({
    required CityModel? cityModel,
  }) async {
    ConnectivityResult? connectivityResult;
    await _checkConnectivity.checkConnectivity().then(
      (action) => connectivityResult = action.last,
    );
    if (connectivityResult == ConnectivityResult.none) {
      return Future.value(NOInternetDataState());
    }
    final CommonService commonService = CommonService(
      headers: {"Accept-Language": cityModel?.acceptLanguage},
    );
    Completer<DataState<List<CityEntity?>?>?> getCitiesCompleter = Completer();
    try {
      await commonService
          .get(
            ApiConstant.citiesList,
            params: {"country_id": cityModel?.country_id},
          )
          .then((onValue) {
            if (onValue is DataSuccess) {
              List<CityEntity?>? cities = [];
              final List? rawCities = onValue.data?.data["data"];

              rawCities?.forEach(
                (action) => action != null
                    ? cities.add(CityEntity.fromJson(action))
                    : null,
              );
              getCitiesCompleter.complete(DataSuccess(data: cities));
              return getCitiesCompleter.future;
            } else {
              getCitiesCompleter.completeError(
                DataFailed(error: onValue.error),
              );
              return getCitiesCompleter.future;
            }
          });
    } catch (e) {
      getCitiesCompleter.completeError(DataFailed(error: e.toString()));
      return getCitiesCompleter.future;
    }
    return getCitiesCompleter.future;
  }
}
