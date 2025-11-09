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
            ApiConstant.bookingEndpoint,
            params: {"status": getBookingModel?.status ?? "ar"},
          )
          .then((onValue) {
            print("get booking repo res${onValue}");
            if (onValue is DataSuccess) {
              final List? rawBookings = onValue.data?.data["data"];

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
}
