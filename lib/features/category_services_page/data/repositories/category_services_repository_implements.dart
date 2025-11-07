import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:hosta_provider/core/constants/api_constant.dart';
import 'package:hosta_provider/core/data_state/data_state.dart';

import 'package:hosta_provider/core/resource/common_entity/service_entity.dart';
import 'package:hosta_provider/core/resource/common_entity/service_error_entity.dart';
import 'package:hosta_provider/core/resource/common_service/common_service.dart';
import 'package:hosta_provider/core/resource/connectivity/check_connectivity.dart';

import 'package:hosta_provider/features/category_services_page/data/models/get_service_model.dart';

import 'package:hosta_provider/features/category_services_page/data/models/set_service_model.dart';

import '../../domain/repositories/category_services_repository.dart';

class CategoryServicesRepositoryImplements
    implements CategoryServicesRepository {
  final CheckConnectivity _checkConnectivity;

  CategoryServicesRepositoryImplements({
    required CheckConnectivity checkConnectivity,
  }) : _checkConnectivity = checkConnectivity;
  @override
  Future<DataState<List<ServiceEntity?>?>?> getServices(
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
      },
    );
    DataState<List<ServiceEntity?>?>? response;

    try {
      await commonService
          .get(
            ApiConstant.getServices,
            params: {"category_id": getServiceModel?.category_id},
          )
          .then((onValue) {
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

  @override
  Future<DataState<ServiceEntity?>?> setService(
    SetServiceModel? setServiceModel,
  ) async {
    ConnectivityResult? connectivityResult;
    await _checkConnectivity.checkConnectivity().then(
      (onValue) => connectivityResult = onValue.last,
    );
    if (connectivityResult == ConnectivityResult.none) {
      return NOInternetDataState();
    }
    print("from repo token:${setServiceModel?.authorization}");
    CommonService commonService = CommonService(
      headers: {
        "Authorization": "Bearer ${setServiceModel?.authorization}",
        "accept": "application/json",
        "Content-Type": "application/json",
      },
    );
    DataState<ServiceEntity?>? response;

    try {
      print("from repo json:${setServiceModel?.serviceModel?.toJson()}");
      await commonService
          .post(
            ApiConstant.setServices,
            data: setServiceModel?.serviceModel?.toJson(),
          )
          .then((onValue) {
            if (onValue is DataSuccess) {
              response = DataSuccess(
                data: ServiceEntity.fromJson(onValue.data?.data["data"]),
              );
              return response;
            } else if (onValue is UnauthenticatedDataState) {
              response = UnauthenticatedDataState(error: onValue.error);
              return response;
            } else if (onValue is DataError) {
              response = DataError(
                data: ServiceEntity(
                  serviceErrorEntity: ServiceErrorEntity.fromJson(
                    onValue.data?.data["errors"],
                  ),
                ),
              );
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

  @override
  Future<DataState<ServiceEntity?>?> updateService(
    SetServiceModel? setServiceModel,
  ) async {
    ConnectivityResult? connectivityResult;
    await _checkConnectivity.checkConnectivity().then(
      (onValue) => connectivityResult = onValue.last,
    );
    if (connectivityResult == ConnectivityResult.none) {
      return NOInternetDataState();
    }
    print("from repo token:${setServiceModel?.authorization}");
    CommonService commonService = CommonService(
      headers: {
        "Authorization": "Bearer ${setServiceModel?.authorization}",
        "accept": "application/json",
        "Content-Type": "application/json",
      },
    );
    DataState<ServiceEntity?>? response;

    try {
      print("from repo json:${setServiceModel?.serviceModel?.toJson()}");
      await commonService
          .put(
            "${ApiConstant.setServices}/${setServiceModel?.serviceModel?.id}",
            data: setServiceModel?.serviceModel?.toJson(),
          )
          .then((onValue) {
            if (onValue is DataSuccess) {
              response = DataSuccess(
                data: ServiceEntity.fromJson(onValue.data?.data["data"]),
              );
              return response;
            } else if (onValue is UnauthenticatedDataState) {
              response = UnauthenticatedDataState(error: onValue.error);
              return response;
            } else if (onValue is DataError) {
              response = DataError(
                data: ServiceEntity(
                  serviceErrorEntity: ServiceErrorEntity.fromJson(
                    onValue.data?.data["errors"],
                  ),
                ),
              );
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

  @override
  Future<DataState<ServiceEntity?>?> deleteService(
    SetServiceModel? setServiceModel,
  ) async {
    ConnectivityResult? connectivityResult;
    await _checkConnectivity.checkConnectivity().then(
      (onValue) => connectivityResult = onValue.last,
    );
    if (connectivityResult == ConnectivityResult.none) {
      return NOInternetDataState();
    }
    print("from repo token:${setServiceModel?.authorization}");
    CommonService commonService = CommonService(
      headers: {
        "Authorization": "Bearer ${setServiceModel?.authorization}",
        "accept": "application/json",
      },
    );
    DataState<ServiceEntity?>? response;

    try {
      print("from repo json:${setServiceModel?.serviceModel?.toJson()}");
      await commonService
          .delete(
            "${ApiConstant.setServices}/${setServiceModel?.serviceModel?.id}",
          )
          .then((onValue) {
            print("im delet repo:$onValue");
            if (onValue is DataSuccess) {
              response = DataSuccess();
              return response;
            } else if (onValue is UnauthenticatedDataState) {
              response = UnauthenticatedDataState(error: onValue.error);
              return response;
            } else if (onValue is DataError) {
              response = DataError(
                data: ServiceEntity(
                  serviceErrorEntity: ServiceErrorEntity.fromJson(
                    onValue.data?.data["errors"],
                  ),
                ),
              );
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
