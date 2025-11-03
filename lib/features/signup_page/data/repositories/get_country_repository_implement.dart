import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:hosta_provider/core/constants/api_constant.dart';
import 'package:hosta_provider/core/data_state/data_state.dart';
import 'package:hosta_provider/core/resource/common_service/common_service.dart';
import 'package:hosta_provider/features/signup_page/data/models/country_model.dart';
import 'package:hosta_provider/features/signup_page/domain/entities/country_entity.dart';
import 'package:hosta_provider/features/signup_page/domain/repositories/get_country_repository.dart';

import '../../../../core/resource/connectivity/check_connectivity.dart';

class GetCountryRepositoryImplement implements GetCountryRepository {
  final CheckConnectivity _checkConnectivity;

  GetCountryRepositoryImplement({required CheckConnectivity checkConnectivity})
    : _checkConnectivity = checkConnectivity;
  @override
  Future<DataState<List<CountryEntity?>?>?> getCountry({
    required CountryModel? countryModel,
  }) async {
    ConnectivityResult connectivityResult = ConnectivityResult.none;
    await _checkConnectivity.checkConnectivity().then(
      (action) => connectivityResult = action.last,
    );
    if (connectivityResult == ConnectivityResult.none) {
      return Future.value(NOInternetDataState());
    }
    final CommonService commonService = CommonService(
      headers: {"Accept-Language": countryModel?.acceptLanguage},
    );
    Completer<DataState<List<CountryEntity?>?>?> getCountriesCompleter =
        Completer();
    try {
      await commonService.get(ApiConstant.countryList).then((onValue) {
        if (onValue is DataSuccess) {
          List<CountryEntity?>? countries = [];
          final List? rawCountries = onValue.data?.data["data"];
          rawCountries?.forEach(
            (action) => action != null
                ? countries.add(CountryEntity.fromJson(action))
                : null,
          );
          getCountriesCompleter.complete(DataSuccess(data: countries));
          return DataSuccess(data: countries);
        } else {
          getCountriesCompleter.completeError(DataFailed(error: onValue.error));
          return DataFailed(error: onValue.error);
        }
      });
      return getCountriesCompleter.future;
    } catch (e) {
      getCountriesCompleter.completeError(DataFailed(error: e.toString()));
      return getCountriesCompleter.future;
    }
  }
}
