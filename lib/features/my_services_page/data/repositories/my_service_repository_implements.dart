import 'package:connectivity_plus/connectivity_plus.dart';
import '../../../../core/constants/api_constant.dart';
import '../../../../core/data_state/data_state.dart';
import '../../../../core/resource/common_entity/service_entity.dart';
import '../../../category_services_page/data/models/get_service_model.dart';
import '../../domain/repositories/my_services_repository.dart';

import '../../../../core/resource/common_service/common_service.dart';
import '../../../../core/resource/connectivity/check_connectivity.dart';

class MyServiceRepositoryImplements implements MyServicesRepository {
  final CheckConnectivity _checkConnectivity;

  MyServiceRepositoryImplements({required CheckConnectivity checkConnectivity})
    : _checkConnectivity = checkConnectivity;
  @override
  Future<DataState<List<ServiceEntity?>?>?> get(
    GetServiceModel? getServiceModel,
  ) async {
    ConnectivityResult? connectivityResult;
    await _checkConnectivity.checkConnectivity().then(
      (onValue) => connectivityResult = onValue.last,
    );
    if (connectivityResult == ConnectivityResult.none) {
      return NOInternetDataState();
    }
    CommonService commonService = CommonService(
      headers: {
        "Accept-Language": getServiceModel?.acceptLanguage,
        "Authorization": "Bearer ${getServiceModel?.Authorization}",
        "accept": "application/json",
      },
    );
    DataState<List<ServiceEntity?>?>? response;
    try {
      await commonService.get(ApiConstant.getMyServices).then((onValue) {
        if (onValue is DataSuccess) {
          final List? rawServices = onValue.data?.data["data"];
          List<ServiceEntity?>? services = [];
          rawServices?.forEach(
            (action) => services.add(ServiceEntity.fromJson(action)),
          );
          response = DataSuccess(data: services);
          return response;
        } else if (onValue is UnauthenticatedDataState) {
          response = UnauthenticatedDataState(error: onValue.error);
          return response;
        } else {
          response = DataFailed(error: onValue.error);
          return response;
        }
      });
    } catch (e) {
      response = DataFailed(error: e.toString());
      return response;
    }
    return response;
  }
}
