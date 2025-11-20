import 'dart:math';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:hosta_provider/core/data_state/data_state.dart';

import 'package:hosta_provider/features/booking_page/data/models/get_booking_model.dart';

import 'package:hosta_provider/features/booking_page/domain/entities/booking_entity.dart';

import '../../../../core/constants/api_constant.dart';
import '../../../../core/resource/common_service/common_service.dart';
import '../../../../core/resource/connectivity/check_connectivity.dart';
import '../../domain/repositories/booking_repository.dart';

class BookingRepositoryImpl implements BookingRepository {
  final CheckConnectivity _checkConnectivity;
  BookingRepositoryImpl(this._checkConnectivity);
  @override
  Future<DataState<List<BookingEntity?>?>?> getBookings({
    GetBookingModel? getBookingModel,
  }) async {
    ConnectivityResult? connectivityResult;
    await _checkConnectivity.checkConnectivity().then(
      (onValue) => connectivityResult = onValue.last,
    );
    if (connectivityResult == ConnectivityResult.none) {
      return NOInternetDataState();
    }
    print("get booking repo res${getBookingModel}");
    CommonService commonService = CommonService(
      headers: {
        "Accept-Language": getBookingModel?.acceptLanguage,
        "Authorization": "Bearer ${getBookingModel?.auth}",
        "accept": "application/json",
      },
    );
    DataState<List<BookingEntity?>?>? response;
    try {
      await commonService
          .get(
            "${ApiConstant.bookingEndpoint}/${getBookingModel?.id}",
            params: {"status": getBookingModel?.status ?? ""},
          )
          .then((onValue) {
            print("get booking repo res${onValue.data?.data["data"]}");
            if (onValue is DataSuccess) {
              List? rawBookings;
              if (onValue.data?.data["data"] is List) {
                rawBookings = onValue.data?.data["data"];
              } else {
                rawBookings = [onValue.data?.data["data"]];
              }
              List<BookingEntity?>? bookings = [];
              rawBookings?.forEach(
                (action) => bookings.add(BookingEntity.fromJson(action)),
              );
              print("get booking repo res raw${rawBookings}");
              response = DataSuccess(data: bookings);
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
      print("get booking repo res yup catch");
      response = DataFailed(error: e.toString());
      return response;
    }
    return response;
  }

  @override
  Future<DataState<BookingEntity?>?> set({
    GetBookingModel? getBookingModel,
  }) async {
    ConnectivityResult? connectivityResult;
    await _checkConnectivity.checkConnectivity().then(
      (onValue) => connectivityResult = onValue.last,
    );
    if (connectivityResult == ConnectivityResult.none) {
      return NOInternetDataState();
    }
    print("get booking repo res${getBookingModel}");
    CommonService commonService = CommonService(
      headers: {
        "Authorization": "Bearer ${getBookingModel?.auth}",
        "accept": "application/json",
      },
    );
    DataState<BookingEntity?>? response;
    try {
      print(
        "get booking repo res url${"${ApiConstant.bookingEndpoint}/${getBookingModel?.id}/${getBookingModel?.status}"}",
      );
      await commonService
          .post(
            "${ApiConstant.bookingEndpoint}/${getBookingModel?.id}/${getBookingModel?.status}",
            data: {
              if (getBookingModel?.reason != null ||
                  getBookingModel?.reason != "")
                "notes": getBookingModel?.reason,
            },
          )
          .then((onValue) {
            print("get booking repo res${onValue.data?.data["data"]}");
            if (onValue is DataSuccess) {
              print("get booking repo res raw${onValue.data?.data["data"]}");
              response = DataSuccess(
                data: BookingEntity.fromJson(onValue.data?.data["data"]),
              );
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
      print("get booking repo res yup catch");
      response = DataFailed(error: e.toString());
      return response;
    }
    print("get booking repo res final${response?.error}");
    return response;
  }
}
