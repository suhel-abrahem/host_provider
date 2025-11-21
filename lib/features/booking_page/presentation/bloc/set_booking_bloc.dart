import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../config/app/app_preferences.dart';
import '../../../../core/data_state/data_state.dart';
import '../../../../core/dependencies_injection.dart';
import '../../../login_page/domain/entities/login_state_entity.dart';
import '../../../refresh_token/data/models/refresh_token_model.dart';
import '../../../refresh_token/domain/usecases/refresh_token_usecase.dart';
import '../../data/models/get_booking_model.dart';
import '../../domain/entities/booking_entity.dart';
import '../../domain/usecases/set_booking_usecase.dart';

part 'set_booking_event.dart';
part 'set_booking_state.dart';
part 'set_booking_bloc.freezed.dart';

class SetBookingBloc extends Bloc<SetBookingEvent, SetBookingState> {
  final SetBookingUsecase _setBookingUsecase;
  final RefreshTokenUsecase _refreshTokenUsecase;
  SetBookingBloc(this._setBookingUsecase, this._refreshTokenUsecase)
    : super(SetBookingState.initial()) {
    on<SetBookingEventStarted>((event, emit) {});
    on<SetBookingEventSetBookings>((event, emit) async {
      final LoginStateEntity? userInfo = getItInstance<AppPreferences>()
          .getUserInfo();
      emit(SetBookingState.loading());

      await _refreshTokenUsecase
          .call(
            params: RefreshTokenModel(
              token: userInfo?.access_token,
              refresh_token: userInfo?.refresh_token,
            ),
          )
          .then((onValue) async {
            if (onValue is DataSuccess) {
              await _setBookingUsecase(
                params: event.getBookingModel?.copyWith(
                  auth: onValue?.data?.access_token,
                ),
              ).then((getValue) {
                if (getValue is DataSuccess) {
                  final bookings = getValue?.data;
                  if (bookings != null) {
                    emit(SetBookingState.loaded(bookings: bookings));
                  } else {
                    emit(SetBookingState.noData());
                  }
                } else {
                  emit(SetBookingState.error());
                }
              });
            } else if (onValue is UnauthenticatedDataState) {
              emit(SetBookingState.unauthenticated());
            } else if (onValue is NOInternetDataState) {
              emit(SetBookingState.noInternet());
            } else if (onValue is DataFailed) {
              emit(SetBookingState.unauthenticated());
            } else {
              emit(SetBookingState.unauthenticated());
            }
          });
    });
  }
}
