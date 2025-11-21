import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/usecases/get_booking_usecase.dart';
import '../../../refresh_token/domain/usecases/refresh_token_usecase.dart';

import '../../../../config/app/app_preferences.dart';
import '../../../../core/data_state/data_state.dart';
import '../../../../core/dependencies_injection.dart';
import '../../../login_page/domain/entities/login_state_entity.dart';
import '../../../refresh_token/data/models/refresh_token_model.dart';
import '../../data/models/get_booking_model.dart';
import '../../domain/entities/booking_entity.dart';

part 'get_booking_event.dart';
part 'get_booking_state.dart';
part 'get_booking_bloc.freezed.dart';

class GetBookingBloc extends Bloc<GetBookingEvent, GetBookingState> {
  final GetBookingUsecase _getBookingUsecase;
  final RefreshTokenUsecase _refreshTokenUsecase;
  GetBookingBloc(this._getBookingUsecase, this._refreshTokenUsecase)
    : super(GetBookingState.initial()) {
    on<GetBookingEventStarted>((event, emit) {
      emit(GetBookingState.initial());
    });
    on<GetBookingEventGetBookings>((event, emit) async {
      final LoginStateEntity? userInfo = getItInstance<AppPreferences>()
          .getUserInfo();
      emit(GetBookingState.loading());

      await _refreshTokenUsecase
          .call(
            params: RefreshTokenModel(
              token: userInfo?.access_token,
              refresh_token: userInfo?.refresh_token,
            ),
          )
          .then((onValue) async {
            if (onValue is DataSuccess) {
              await _getBookingUsecase(
                params: event.getBookingModel?.copyWith(
                  auth: onValue?.data?.access_token,
                ),
              ).then((getValue) {
                if (getValue is DataSuccess<List<BookingEntity?>?>) {
                  final bookings = getValue.data;
                  if (bookings != null && bookings.isNotEmpty) {
                    emit(GetBookingState.loaded(bookings: bookings));
                  } else {
                    emit(GetBookingState.noData());
                  }
                } else {
                  emit(GetBookingState.error());
                }
              });
            } else if (onValue is UnauthenticatedDataState) {
              emit(GetBookingState.unauthenticated());
            } else if (onValue is NOInternetDataState) {
              emit(GetBookingState.noInternet());
            } else if (onValue is DataFailed) {
              emit(GetBookingState.unauthenticated());
            } else {
              emit(GetBookingState.unauthenticated());
            }
          });
    });
  }
}
