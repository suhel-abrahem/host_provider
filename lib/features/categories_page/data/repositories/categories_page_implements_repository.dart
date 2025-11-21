import 'package:connectivity_plus/connectivity_plus.dart';

import '../../../../core/constants/api_constant.dart';
import '../../../../core/data_state/data_state.dart';

import '../../../../core/resource/common_service/common_service.dart';
import '../../../../core/resource/connectivity/check_connectivity.dart';
import '../models/get_category_model.dart';
import '../../domain/entities/category_entity.dart';
import '../../domain/repositories/categories_page_repository.dart';

class CategoriesPageImplementsRepository implements CategoriesPageRepository {
  final CheckConnectivity _checkConnectivity;

  CategoriesPageImplementsRepository({
    required CheckConnectivity checkConnectivity,
  }) : _checkConnectivity = checkConnectivity;
  ConnectivityResult connectivityResult = ConnectivityResult.none;
  // @override
  // Future<DataState<List<ServiceEntity?>?>?> getServices(
  //   GetServiceModel? getCategoryModel,
  // ) async {
  //   CommonService commonService = CommonService(
  //     headers: {
  //       "Accept-Language": getCategoryModel?.acceptLanguage,
  //       "Authorization": getCategoryModel?.Authorization,
  //     },
  //   );
  //   await _checkConnectivity.checkConnectivity().then(
  //     (action) => connectivityResult = action.last,
  //   );
  //   if (connectivityResult == ConnectivityResult.none) {
  //     return NOInternetDataState();
  //   }
  //   DataState<List<ServiceEntity?>?>? response;
  //   try {
  //     await commonService
  //         .get(
  //           ApiConstant.getServices,
  //           params: {"category_id": getServiceModel?.category_id},
  //         )
  //         .then((onValue) {
  //           if (onValue is DataSuccess) {
  //             final List<Map<String, dynamic>?>? rawServices =
  //                 onValue.data?.data["data"];
  //             List<ServiceEntity?>? services = [];
  //             rawServices?.forEach(
  //               (action) => services.add(ServiceEntity.fromJson(action ?? {})),
  //             );
  //             response = DataSuccess(data: services);
  //           } else if (onValue is UnauthenticatedDataState) {
  //             response = UnauthenticatedDataState(error: onValue.error);
  //           } else {
  //             response = DataFailed(error: onValue.error);
  //           }
  //         });
  //   } catch (e) {
  //     response = DataFailed(error: e.toString());
  //     return response;
  //   }
  //   return response;
  // }

  @override
  Future<DataState<List<CategoryEntity?>?>?> getCategories(
    GetCategoryModel? getCategoryModel,
  ) async {
    ConnectivityResult? connectivityResult;
    await _checkConnectivity.checkConnectivity().then((onValue) {
      connectivityResult = onValue.last;
    });
    if (connectivityResult == ConnectivityResult.none) {
      return NOInternetDataState();
    }
    CommonService commonService = CommonService(
      headers: {
        "Accept-Language": getCategoryModel?.acceptLanguage,
        "Authorization": "Bearer ${getCategoryModel?.Authorization}",
      },
    );
    DataState<List<CategoryEntity?>?>? response = DataFailed(error: "");
    await commonService.get(ApiConstant.categoryEndpoint).then((onValue) {
      try {
        if (onValue is UnauthenticatedDataState) {
          response = UnauthenticatedDataState(error: onValue.error);
          return response;
        } else if (onValue is DataFailed) {
          response = DataFailed(error: onValue.error);
          return response;
        } else if (onValue is DataSuccess) {
          final List? rawCategory = onValue.data?.data["data"];
          List<CategoryEntity?>? category = [];
          rawCategory?.forEach(
            (action) => category.add(CategoryEntity.fromJson(action ?? {})),
          );
          response = DataSuccess(data: category);
          return response;
        } else {
          response = DataFailed(error: onValue.error);
          return response;
        }
      } catch (e) {
        response = DataFailed(error: e.toString());
      }
    });
    return response;
  }
}
