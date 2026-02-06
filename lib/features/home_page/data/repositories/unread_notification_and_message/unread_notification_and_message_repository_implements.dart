import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '/core/constants/api_constant.dart';
import '/core/data_state/data_state.dart';
import '/core/resource/common_service/common_service.dart';
import '/core/resource/connectivity/check_connectivity.dart';

import '/core/usecase/usecase.dart';

import '../../../domain/repositories/unread_notification_and_message_repository/unread_notification_and_message_repository.dart';

class UnreadNotificationAndMessageRepositoryImplements
    implements UnreadNotificationAndMessageRepository {
  final CheckConnectivity? checkConnectivity;

  UnreadNotificationAndMessageRepositoryImplements({
    required this.checkConnectivity,
  });
  @override
  Future<DataState<int?>?> getUnreadMessageCount(String? params) async {
    DataState<int?>? dataState;
    ConnectivityResult? connectivityResult = ConnectivityResult.none;
    await checkConnectivity?.checkConnectivity().then((result) {
      connectivityResult = result.last;
    });
    if (connectivityResult == ConnectivityResult.none) {
      dataState = const NOInternetDataState();
      return dataState;
    }
    try {
      final CommonService commonService = CommonService(
        headers: {
          'Authorization': 'Bearer $params',
          "Accept": "application/json",
        },
      );
      await commonService.get(ApiConstant.getUnreadMessageCountEndpoint).then((
        response,
      ) {
        if (response is DataSuccess) {
          dataState = DataSuccess(
            data: response.data?.data["data"]['unread_count'],
          );
          return dataState;
        } else if (response is UnauthenticatedDataState) {
          dataState = UnauthenticatedDataState(error: response.error);
          return dataState;
        } else {
          dataState = DataFailed(error: response.error);
          return dataState;
        }
      });
    } catch (e) {
      dataState = DataFailed(error: e.toString());
      return dataState;
    }
    return dataState;
  }

  @override
  Future<DataState<int?>?> getUnreadNotificationCount(String? params) async {
    DataState<int?>? dataState;
    ConnectivityResult? connectivityResult;
    await checkConnectivity?.checkConnectivity().then((result) {
      connectivityResult = result.last;
    });
    if (connectivityResult == ConnectivityResult.none) {
      dataState = const NOInternetDataState();
      return dataState;
    }
    try {
      final CommonService commonService = CommonService(
        headers: {
          'Authorization': 'Bearer $params',
          "Accept": "application/json",
        },
      );
      await commonService
          .get(ApiConstant.getUnreadNotificationCountEndpoint)
          .then((response) {
            if (response is DataSuccess) {
              dataState = DataSuccess(
                data: response.data?.data['unread_count'],
              );
              return dataState;
            } else if (response is UnauthenticatedDataState) {
              dataState = UnauthenticatedDataState(error: response.error);
              return dataState;
            } else {
              dataState = DataFailed(error: response.error);
              return dataState;
            }
          });
    } catch (e) {
      dataState = DataFailed(error: e.toString());
      return dataState;
    }
    print("Unread Notification Count DataState: ${dataState?.data}");
    return dataState;
  }

  @override
  Future<DataState<int?>?> getUnreadTicketCount(String? token) async {
    DataState<int?>? dataState;
    ConnectivityResult? connectivityResult;
    await checkConnectivity?.checkConnectivity().then((result) {
      connectivityResult = result.last;
    });
    if (connectivityResult == ConnectivityResult.none) {
      dataState = const NOInternetDataState();
      return dataState;
    }
    try {
      final CommonService commonService = CommonService(
        headers: {
          'Authorization': 'Bearer $token',
          "Accept": "application/json",
        },
      );
      await commonService.get(ApiConstant.getUnreadTicketCountEndpoint).then((
        response,
      ) {
        if (response is DataSuccess) {
          dataState = DataSuccess(
            data: response.data?.data["data"]['unread_count'],
          );
          return dataState;
        } else if (response is UnauthenticatedDataState) {
          dataState = UnauthenticatedDataState(error: response.error);
          return dataState;
        } else {
          dataState = DataFailed(error: response.error);
          return dataState;
        }
      });
    } catch (e) {
      dataState = DataFailed(error: e.toString());
      return dataState;
    }
    print("Unread Ticket Count DataState: ${dataState?.data}");
    return dataState;
  }
}
