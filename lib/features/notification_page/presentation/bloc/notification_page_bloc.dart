import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '/config/app/app_preferences.dart';
import '/features/login_page/domain/entities/login_state_entity.dart';
import '/features/notification_page/domain/usecases/get_notification_usecase.dart';
import '/features/refresh_token/data/models/refresh_token_model.dart';
import '/features/refresh_token/domain/usecases/refresh_token_usecase.dart';

import '../../../../core/data_state/data_state.dart';
import '../../../../core/dependencies_injection.dart';
import '../../../../core/util/helper/helper.dart';
import '../../data/models/notification_model.dart';
import '../../domain/entities/notification_entity.dart';
import '../../domain/usecases/set_all_notification_as_read_usecase.dart';
import '../../domain/usecases/set_notification_as_read_usecase.dart';

part 'notification_page_event.dart';
part 'notification_page_state.dart';
part 'notification_page_bloc.freezed.dart';

class NotificationPageBloc
    extends Bloc<NotificationPageEvent, NotificationPageState> {
  final GetNotificationUseCase _getNotificationUseCase;
  final SetAllNotificationAsReadUseCase _setAllNotificationAsReadUseCase;
  final SetNotificationAsReadUseCase _setNotificationAsReadUseCase;
  final RefreshTokenUsecase _refreshTokenUsecase;
  NotificationPageBloc(
    this._getNotificationUseCase,
    this._refreshTokenUsecase,
    this._setAllNotificationAsReadUseCase,
    this._setNotificationAsReadUseCase,
  ) : super(NotificationPageState.initial()) {
    on<NotificationPageEventStarted>((event, emit) {
      emit(NotificationPageState.initial());
    });
    // get notifications
    on<NotificationPageEventGetNotifications>((event, emit) async {
      final LoginStateEntity? userInfo = getItInstance<AppPreferences>()
          .getUserInfo();
      emit(NotificationPageState.loading());
      await _refreshTokenUsecase
          .call(
            params: RefreshTokenModel(
              token: userInfo?.access_token,
              refresh_token: userInfo?.refresh_token,
            ),
          )
          .then((refreshDataState) async {
            if (refreshDataState is DataSuccess) {
              await _getNotificationUseCase
                  .call(
                    params: event.model?.copyWith(
                      token: refreshDataState?.data?.access_token,
                    ),
                  )
                  .then((onValue) {
                    if (onValue is DataSuccess) {
                      if (onValue?.data == null ||
                          (onValue?.data?.isEmpty ?? true)) {
                        emit(NotificationPageState.noData());
                      } else {
                        List<NotificationEntity?>? newNotifications = [];
                        List<NotificationEntity?>? todayNotifications = [];
                        List<NotificationEntity?>? earlierNotifications = [];
                        onValue?.data?.forEach((notification) {
                          DateTime? notificationDate = DateTime.tryParse(
                            notification?.created_at ?? "",
                          );
                          if (Helper.isDateNew(notificationDate)) {
                            newNotifications.add(notification);
                          } else if (Helper.isDateToday(notificationDate)) {
                            todayNotifications.add(notification);
                          } else {
                            earlierNotifications.add(notification);
                          }
                        });
                        emit(
                          NotificationPageState.loaded(
                            newNotifications: newNotifications,
                            todayNotifications: todayNotifications,
                            earlierNotifications: earlierNotifications,
                          ),
                        );
                      }
                    } else if (onValue is UnauthenticatedDataState) {
                      emit(NotificationPageState.unauthenticated());
                    } else if (onValue is NOInternetDataState) {
                      emit(NotificationPageState.noInternetConnection());
                    } else {
                      emit(
                        NotificationPageState.error(
                          message: onValue?.error ?? "",
                        ),
                      );
                    }
                  });
            } else if (refreshDataState is UnauthenticatedDataState) {
              emit(NotificationPageState.unauthenticated());
            } else if (refreshDataState is NOInternetDataState) {
              emit(NotificationPageState.noInternetConnection());
            } else {
              emit(
                NotificationPageState.error(
                  message: refreshDataState?.error ?? "",
                ),
              );
            }
          });
    });
    // set notification as read
    on<NotificationPageEventReadNotification>((event, emit) async {
      final LoginStateEntity? userInfo = getItInstance<AppPreferences>()
          .getUserInfo();
      emit(NotificationPageState.loading());
      await _refreshTokenUsecase
          .call(
            params: RefreshTokenModel(
              token: userInfo?.access_token,
              refresh_token: userInfo?.refresh_token,
            ),
          )
          .then((refreshDataState) async {
            if (refreshDataState is DataSuccess) {
              await _setNotificationAsReadUseCase
                  .call(
                    params: event.model?.copyWith(
                      token: refreshDataState?.data?.access_token,
                    ),
                  )
                  .then((onValue) {
                    print("Set Notification as Read Result: $onValue");
                    if (onValue is DataSuccess) {
                      emit(NotificationPageState.readNotificationSuccess());
                    } else if (onValue is UnauthenticatedDataState) {
                      emit(NotificationPageState.unauthenticated());
                    } else if (onValue is NOInternetDataState) {
                      emit(NotificationPageState.noInternetConnection());
                    } else {
                      emit(
                        NotificationPageState.setReadNotificationError(
                          message: onValue?.error ?? "",
                        ),
                      );
                    }
                  });
            } else if (refreshDataState is UnauthenticatedDataState) {
              emit(NotificationPageState.unauthenticated());
            } else if (refreshDataState is NOInternetDataState) {
              emit(NotificationPageState.noInternetConnection());
            } else {
              emit(
                NotificationPageState.error(
                  message: refreshDataState?.error ?? "",
                ),
              );
            }
          });
    });
    // set all notification as read
    on<NotificationPageEventReadAllNotification>((event, emit) async {
      final LoginStateEntity? userInfo = getItInstance<AppPreferences>()
          .getUserInfo();
      emit(NotificationPageState.loading());
      await _refreshTokenUsecase
          .call(
            params: RefreshTokenModel(
              token: userInfo?.access_token,
              refresh_token: userInfo?.refresh_token,
            ),
          )
          .then((refreshDataState) async {
            if (refreshDataState is DataSuccess) {
              await _setAllNotificationAsReadUseCase
                  .call(
                    params: NotificationModel(
                      token: refreshDataState?.data?.access_token,
                    ),
                  )
                  .then((onValue) {
                    if (onValue is DataSuccess) {
                      emit(NotificationPageState.readAllNotificationSuccess());
                    } else if (onValue is UnauthenticatedDataState) {
                      emit(NotificationPageState.unauthenticated());
                    } else if (onValue is NOInternetDataState) {
                      emit(NotificationPageState.noInternetConnection());
                    } else {
                      emit(
                        NotificationPageState.setReadNotificationError(
                          message: onValue?.error ?? "",
                        ),
                      );
                    }
                  });
            } else if (refreshDataState is UnauthenticatedDataState) {
              emit(NotificationPageState.unauthenticated());
            } else if (refreshDataState is NOInternetDataState) {
              emit(NotificationPageState.noInternetConnection());
            } else {
              emit(
                NotificationPageState.error(
                  message: refreshDataState?.error ?? "",
                ),
              );
            }
          });
    });
  }
}
