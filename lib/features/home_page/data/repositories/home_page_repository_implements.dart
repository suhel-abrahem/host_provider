import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:hosta_provider/core/constants/api_constant.dart';
import 'package:hosta_provider/core/resource/common_service/common_service.dart';
import 'package:hosta_provider/core/resource/connectivity/check_connectivity.dart';
import 'package:hosta_provider/features/home_page/data/models/home_page_model.dart';

import '../../../../core/data_state/data_state.dart';
import '../../domain/entities/home_page_entity.dart';
import '../../domain/repositories/home_page_repository.dart';

class HomePageRepositoryImpl implements HomePageRepository {
  final CheckConnectivity? _checkConnectivity;

  HomePageRepositoryImpl(this._checkConnectivity);

  @override
  Future<DataState<HomePageEntity?>?> getHomePageData(
    HomePageModel? model,
  ) async {
    ConnectivityResult? connectivityResult;
    await _checkConnectivity?.checkConnectivity().then((result) {
      connectivityResult = result.last;
    });
    if (connectivityResult == ConnectivityResult.none) {
      return NOInternetDataState();
    }
    CommonService commonService = CommonService(
      headers: {
        "Accept-Language": model?.acceptLanguage ?? "",
        "Authorization": "Bearer ${model?.token ?? ""}",
      },
    );
    DataState<HomePageEntity?>? dataState;
    try {
      await commonService.get(ApiConstant.homeStatsEndpoint).then((value) {
        if (value is DataSuccess) {
          dataState = DataSuccess(
            data: HomePageEntity.fromJson(value.data?.data["data"] ?? {}),
          );
          return dataState;
        } else if (value is DataFailed) {
          dataState = DataFailed(error: value.error);
          return dataState;
        }
      });
    } catch (e) {
      dataState = DataFailed(error: e.toString());
      return dataState;
    }
    return dataState;
  }
}
