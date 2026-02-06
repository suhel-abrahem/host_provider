import 'package:connectivity_plus/connectivity_plus.dart';
import '../../../../core/data_state/data_state.dart';
import '../../../../core/resource/common_service/common_service.dart';
import '../../../../core/resource/connectivity/check_connectivity.dart';

import '../../../../features/notification_page/data/models/notification_model.dart';

import '../../../../features/notification_page/domain/entities/notification_entity.dart';

import '../../../../core/constants/api_constant.dart';
import '../../domain/repositories/notification_repository.dart';

class NotificationRepositoryImpl implements NotificationRepository {
  final CheckConnectivity _connectivity;
  NotificationRepositoryImpl(this._connectivity);
  @override
  Future<DataState<List<NotificationEntity?>?>?> getNotifications({
    NotificationModel? model,
  }) async {
    ConnectivityResult? connectivityResult;
    DataState<List<NotificationEntity?>?>? dataState;
    await _connectivity.checkConnectivity().then((connectivityResult) {
      connectivityResult = connectivityResult;
    });
    if (connectivityResult == ConnectivityResult.none) {
      dataState = NOInternetDataState();
      return dataState;
    } else {
      CommonService _commonService = CommonService(
        headers: {
          'Authorization': 'Bearer ${model?.token}',
          'Accept-Language': model?.acceptLanguage ?? 'ar',
          "accept": "application/json",
        },
      );
      try {
        await _commonService.get(ApiConstant.getNotificationsEndpoint).then((
          onValue,
        ) {
          if (onValue is DataSuccess) {
            List<NotificationEntity?> notifications = [];
            for (var item in onValue.data?.data['data']) {
              notifications.add(NotificationEntity.fromJson(item));
            }
            dataState = DataSuccess(data: notifications);
          } else if (onValue is DataFailed) {
            dataState = DataFailed(error: onValue.error);
          } else if (onValue is UnauthenticatedDataState) {
            dataState = UnauthenticatedDataState(error: onValue.error ?? "");
          } else {
            dataState = DataFailed(error: "Unknown error occurred");
          }
          return dataState;
        });
      } catch (e) {
        dataState = DataFailed(error: e.toString());
        return dataState;
      }
      return dataState;
    }
  }

  @override
  Future<DataState<void>?> readAllNotification({
    NotificationModel? model,
  }) async {
    ConnectivityResult? connectivityResult;
    DataState<void>? dataState;
    await _connectivity.checkConnectivity().then((connectivityResult) {
      connectivityResult = connectivityResult;
    });
    if (connectivityResult == ConnectivityResult.none) {
      dataState = NOInternetDataState();
      return dataState;
    } else {
      CommonService _commonService = CommonService(
        headers: {
          'Authorization': 'Bearer ${model?.token}',
          'Accept-Language': model?.acceptLanguage ?? 'ar',
          "accept": "application/json",
        },
      );
      try {
        await _commonService
            .post("${ApiConstant.getNotificationsEndpoint}/read-all")
            .then((onValue) {
              if (onValue is DataSuccess) {
                dataState = DataSuccess();
              } else if (onValue is DataFailed) {
                dataState = DataFailed(error: onValue.error);
              } else if (onValue is UnauthenticatedDataState) {
                dataState = UnauthenticatedDataState(
                  error: onValue.error ?? "",
                );
              } else {
                dataState = DataFailed(error: "Unknown error occurred");
              }
              return dataState;
            });
      } catch (e) {
        dataState = DataFailed(error: e.toString());
        return dataState;
      }
      return dataState;
    }
  }

  @override
  Future<DataState<void>?> readNotification({NotificationModel? model}) async {
    ConnectivityResult? connectivityResult;
    DataState<void>? dataState;
    await _connectivity.checkConnectivity().then((connectivityResult) {
      connectivityResult = connectivityResult;
    });
    if (connectivityResult == ConnectivityResult.none) {
      dataState = NOInternetDataState();
      return dataState;
    } else {
      CommonService _commonService = CommonService(
        headers: {
          'Authorization': 'Bearer ${model?.token}',
          'Accept-Language': model?.acceptLanguage ?? 'ar',
          "accept": "application/json",
        },
      );
      try {
        await _commonService
            .post("${ApiConstant.getNotificationsEndpoint}/${model?.id}/read")
            .then((onValue) {
              if (onValue is DataSuccess) {
                dataState = DataSuccess();
              } else if (onValue is DataFailed) {
                dataState = DataFailed(error: onValue.error);
              } else if (onValue is UnauthenticatedDataState) {
                dataState = UnauthenticatedDataState(
                  error: onValue.error ?? "",
                );
              } else {
                dataState = DataFailed(error: "Unknown error occurred");
              }
              return dataState;
            });
      } catch (e) {
        dataState = DataFailed(error: e.toString());
        return dataState;
      }
      return dataState;
    }
  }
}
