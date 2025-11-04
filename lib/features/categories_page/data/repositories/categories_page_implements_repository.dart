import 'package:connectivity_plus/connectivity_plus.dart';

import 'package:hosta_provider/core/constants/api_constant.dart';
import 'package:hosta_provider/core/data_state/data_state.dart';

import 'package:hosta_provider/core/resource/common_service/common_service.dart';
import 'package:hosta_provider/core/resource/connectivity/check_connectivity.dart';
import 'package:hosta_provider/features/categories_page/data/models/get_category_model.dart';
import 'package:hosta_provider/features/categories_page/data/models/get_service_model.dart';
import 'package:hosta_provider/features/categories_page/domain/entities/category_entity.dart';
import 'package:hosta_provider/features/categories_page/domain/entities/service_entity.dart';
import 'package:hosta_provider/features/categories_page/domain/repositories/categories_page_repository.dart';

class CategoriesPageImplementsRepository implements CategoriesPageRepository {
  final CheckConnectivity _checkConnectivity;

  CategoriesPageImplementsRepository({
    required CheckConnectivity checkConnectivity,
  }) : _checkConnectivity = checkConnectivity;
  ConnectivityResult connectivityResult = ConnectivityResult.none;
  @override
  Future<DataState<List<ServiceEntity?>?>?> getServices(
    GetServiceModel? getServiceModel,
  ) async {
    CommonService commonService = CommonService(
      headers: {
        "Accept-Language": getServiceModel?.acceptLanguage,
        "Authorization": getServiceModel?.Authorization,
      },
    );
    await _checkConnectivity.checkConnectivity().then(
      (action) => connectivityResult = action.last,
    );
    if (connectivityResult == ConnectivityResult.none) {
      return NOInternetDataState();
    }
    DataState<List<ServiceEntity?>?>? response;
    try {
      await commonService
          .get(
            ApiConstant.getServices,
            params: {"category_id": getServiceModel?.category_id},
          )
          .then((onValue) {
            if (onValue is DataSuccess) {
              final List<Map<String, dynamic>?>? rawServices =
                  onValue.data?.data["data"];
              List<ServiceEntity?>? services = [];
              rawServices?.forEach(
                (action) => services.add(ServiceEntity.fromJson(action ?? {})),
              );
              response = DataSuccess(data: services);
            } else if (onValue is UnauthenticatedDataState) {
              response = UnauthenticatedDataState(error: onValue.error);
            } else {
              response = DataFailed(error: onValue.error);
            }
          });
    } catch (e) {
      response = DataFailed(error: e.toString());
      return response;
    }
    return response;
  }

  @override
  Future<DataState<void>?> setService() {
    // TODO: implement setService
    throw UnimplementedError();
  }

  @override
  Future<DataState<List<CategoryEntity?>?>?> getCategories(
    GetCategoryModel? getServiceModel,
  ) {
    // TODO: implement getCategories
    throw UnimplementedError();
  }
}
