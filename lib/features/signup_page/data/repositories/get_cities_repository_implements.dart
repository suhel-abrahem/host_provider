import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:hosta_provider/core/constants/api_constant.dart';
import 'package:hosta_provider/core/data_state/data_state.dart';
import 'package:hosta_provider/features/signup_page/data/models/city_model.dart';
import 'package:hosta_provider/features/signup_page/domain/entities/city_entity.dart';
import 'package:hosta_provider/features/signup_page/domain/repositories/get_cities_repository.dart';

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
    ConnectivityResult connectivityResult = ConnectivityResult.none;
    await _checkConnectivity.checkConnectivity().then(
      (action) => connectivityResult = action.last,
    );
    if (connectivityResult == ConnectivityResult.none) {
      return Future.value(NOInternetDataState());
    }
    final CommonService commonService = CommonService(
      headers: {"Accept-Language": cityModel?.acceptLanguage},
    );
    await commonService.get(ApiConstant.citiesList).then((onValue) {
      if (onValue is DataSuccess) {
        List<CityEntity?>? cities = [];
        final List<Map<String, dynamic>?>? rawCities =
            onValue.data?.data["data"];
        rawCities?.forEach(
          (action) =>
              action != null ? cities.add(CityEntity.fromJson(action)) : null,
        );
        return DataSuccess(data: cities);
      } else {
        return DataError(error: onValue.error);
      }
    });
    return null;
  }
}
