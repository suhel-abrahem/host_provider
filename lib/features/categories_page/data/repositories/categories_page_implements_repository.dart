import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:hosta_provider/core/constants/api_constant.dart';
import 'package:hosta_provider/core/data_state/data_state.dart';
import 'package:hosta_provider/core/resource/common_service/common_service.dart';
import 'package:hosta_provider/core/resource/connectivity/check_connectivity.dart';
import 'package:hosta_provider/features/categories_page/domain/entities/service_entity.dart';
import 'package:hosta_provider/features/categories_page/domain/repositories/categories_page_repository.dart';

class CategoriesPageImplementsRepository implements CategoriesPageRepository {
  final CommonService _commonService;
  final CheckConnectivity _checkConnectivity;

  CategoriesPageImplementsRepository({
    required CommonService commonService,
    required CheckConnectivity checkConnectivity,
  }) : _commonService = commonService,
       _checkConnectivity = checkConnectivity;
  ConnectivityResult connectivityResult = ConnectivityResult.none;
  @override
  Future<DataState<ServiceEntity?>?> getServices(String? languageCode) async {
    await _checkConnectivity.checkConnectivity().then(
      (action) => connectivityResult = action.last,
    );
    if (connectivityResult == ConnectivityResult.none) {
      return Future.value(NOInternetDataState());
    }
    try {
      final response = _commonService.get(ApiConstant.getServices, params: {});
    } catch (e) {
      return Future.value(DataFailed(error: e.toString()));
    }
  }

  @override
  Future<DataState<void>?> setService() {
    // TODO: implement setService
    throw UnimplementedError();
  }
}
