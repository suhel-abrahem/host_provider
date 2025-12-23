import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '/config/route/routes_manager.dart';
import '/core/constants/font_constants.dart';

import '/core/dependencies_injection.dart';
import '/core/resource/common_state_widget/error_state_widget.dart';
import '/core/resource/common_state_widget/no_data_state_widget.dart';
import '/core/resource/common_state_widget/no_internet_state_widget.dart';
import '/core/resource/custom_widget/snake_bar_widget/snake_bar_widget.dart';
import '/core/resource/main_page/main_page.dart';
import '/core/util/helper/helper.dart';
import '/features/login_page/domain/entities/login_state_entity.dart';
import '/features/notification_page/presentation/bloc/notification_page_bloc.dart';
import '/features/notification_page/presentation/widgets/notification_widget.dart';
import '/generated/locale_keys.g.dart';

import '../../../../config/app/app_preferences.dart';
import '../../../../core/enums/login_state_enum.dart';
import '../../data/models/notification_model.dart';
import '../../domain/entities/notification_entity.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  bool? didAnimationCompleted = false;
  NotificationModel notificationModel = NotificationModel();
  bool? isNotificationsLoading = true;
  List<NotificationEntity?>? newNotifications = [];
  List<NotificationEntity?>? todayNotifications = [];
  List<NotificationEntity?>? earlierNotifications = [];
  @override
  void didUpdateWidget(covariant NotificationPage oldWidget) {
    notificationModel = notificationModel.copyWith(
      acceptLanguage: Helper.getCountryCode(context),
    );
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return MainPage(
      onAnimationComplete: (newState) => setState(() {
        didAnimationCompleted = newState;
      }),
      title: LocaleKeys.notificationPage_title.tr(),
      body: Builder(
        builder: (context) {
          notificationModel = notificationModel.copyWith(
            acceptLanguage: Helper.getCountryCode(context),
          );
          return BlocProvider<NotificationPageBloc>(
            create: (context) => getItInstance<NotificationPageBloc>()
              ..add(
                NotificationPageEvent.getNotifications(
                  model: notificationModel,
                ),
              ),
            child: BlocListener<NotificationPageBloc, NotificationPageState>(
              listener: (context, state) async {
                if (state is NotificationPageStateReadNotificationSuccess) {
                  context.read<NotificationPageBloc>().add(
                    NotificationPageEvent.getNotifications(
                      model: notificationModel,
                    ),
                  );
                } else if (state
                    is NotificationPageStateReadAllNotificationSuccess) {
                  showMessage(
                    message: LocaleKeys.common_success.tr(),
                    context: context,
                  );
                  context.read<NotificationPageBloc>().add(
                    NotificationPageEvent.getNotifications(
                      model: notificationModel,
                    ),
                  );
                } else if (state
                    is NotificationPageStateSetReadNotificationError) {
                  showMessage(
                    message: LocaleKeys.common_error.tr(),
                    context: context,
                  );
                  context.read<NotificationPageBloc>().add(
                    NotificationPageEvent.getNotifications(
                      model: notificationModel,
                    ),
                  );
                } else if (state is NotificationPageStateUnauthenticated) {
                  showMessage(
                    message: LocaleKeys.common_anErrorHasOccurs.tr(),
                    context: context,
                  );
                  await getItInstance<AppPreferences>().setUserInfo(
                    loginStateEntity: LoginStateEntity(
                      loginStateEnum: LoginStateEnum.unlogined,
                    ),
                  );
                  if (context.mounted) {
                    context.goNamed(RoutesPath.loginPage);
                  }
                }
              },
              child: BlocBuilder<NotificationPageBloc, NotificationPageState>(
                builder: (context, state) {
                  // print("didAnimationCompleted: $didAnimationCompleted");
                  // print("Notification Page State: $state");
                  return state.when(
                    initial: () => Center(
                      child: CircularProgressIndicator(strokeWidth: 2.w),
                    ),
                    loading: () => Center(
                      child: CircularProgressIndicator(strokeWidth: 2.w),
                    ),
                    loaded: (newNotifs, todayNotifs, earlierNotifs) {
                      return ListView(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.w,
                              vertical: 16.h,
                            ),
                            child: Align(
                              alignment: AlignmentDirectional.centerStart,
                              child: SizedBox(
                                width: 150.w,
                                height: 40.h,
                                child: TextButton(
                                  style: Theme.of(context).textButtonTheme.style
                                      ?.copyWith(
                                        padding: WidgetStatePropertyAll(
                                          EdgeInsets.symmetric(
                                            horizontal: 0.w,
                                            vertical: 8.h,
                                          ),
                                        ),
                                      ),
                                  onPressed: () {
                                    context.read<NotificationPageBloc>().add(
                                      NotificationPageEvent.readAllNotification(),
                                    );
                                  },

                                  child: Center(
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        LocaleKeys
                                            .notificationPage_makeAllAsRead
                                            .tr(),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            child: Text(
                              LocaleKeys.notificationPage_new.tr(),
                              style: Theme.of(context).textTheme.labelLarge
                                  ?.copyWith(
                                    fontFamily: FontConstants.fontFamily(
                                      context.locale,
                                    ),
                                  ),
                            ),
                          ),
                          if (newNotifs != null && newNotifs.isNotEmpty)
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.h),
                              child: ListView.builder(
                                itemCount: newNotifs.length,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) => NotificationWidget(
                                  notification: newNotifs[index],
                                  onTap: () {
                                    if (newNotifs[index]?.is_read == false) {
                                      context.read<NotificationPageBloc>().add(
                                        NotificationPageEvent.readNotification(
                                          model: notificationModel.copyWith(
                                            id: newNotifs[index]?.id.toString(),
                                          ),
                                        ),
                                      );
                                    }
                                    context.pushNamed(
                                      RoutesName.serviceInfoPage,
                                      pathParameters: {
                                        "serviceId":
                                            newNotifs[index]
                                                ?.data?["booking_id"]
                                                .toString() ??
                                            "",
                                      },
                                    );
                                  },
                                ),
                              ),
                            )
                          else
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.h),
                              child: Center(
                                child: Text(
                                  LocaleKeys
                                      .notificationPage_noNotificationsAvailable
                                      .tr(),
                                  style: Theme.of(context).textTheme.labelMedium
                                      ?.copyWith(
                                        fontFamily: FontConstants.fontFamily(
                                          context.locale,
                                        ),
                                      ),
                                ),
                              ),
                            ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            child: Text(
                              LocaleKeys.notificationPage_today.tr(),
                              style: Theme.of(context).textTheme.labelLarge
                                  ?.copyWith(
                                    fontFamily: FontConstants.fontFamily(
                                      context.locale,
                                    ),
                                  ),
                            ),
                          ),
                          if (todayNotifs != null && todayNotifs.isNotEmpty)
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.h),
                              child: ListView.builder(
                                itemCount: todayNotifs.length,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) => NotificationWidget(
                                  notification: todayNotifs[index],
                                  onTap: () {
                                    if (todayNotifs[index]?.is_read == false) {
                                      context.read<NotificationPageBloc>().add(
                                        NotificationPageEvent.readNotification(
                                          model: notificationModel.copyWith(
                                            id: todayNotifs[index]?.id
                                                .toString(),
                                          ),
                                        ),
                                      );
                                    }
                                    context.pushNamed(
                                      RoutesName.serviceInfoPage,
                                      pathParameters: {
                                        "serviceId":
                                            todayNotifs[index]
                                                ?.data?["booking_id"]
                                                .toString() ??
                                            "",
                                      },
                                    );
                                  },
                                ),
                              ),
                            )
                          else
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.h),
                              child: Center(
                                child: Text(
                                  LocaleKeys
                                      .notificationPage_noNotificationsAvailable
                                      .tr(),
                                  style: Theme.of(context).textTheme.labelMedium
                                      ?.copyWith(
                                        fontFamily: FontConstants.fontFamily(
                                          context.locale,
                                        ),
                                      ),
                                ),
                              ),
                            ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            child: Text(
                              LocaleKeys.notificationPage_earlier.tr(),
                              style: Theme.of(context).textTheme.labelLarge
                                  ?.copyWith(
                                    fontFamily: FontConstants.fontFamily(
                                      context.locale,
                                    ),
                                  ),
                            ),
                          ),
                          if (earlierNotifs != null && earlierNotifs.isNotEmpty)
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.h),
                              child: ListView.builder(
                                itemCount: earlierNotifs.length,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) => NotificationWidget(
                                  notification: earlierNotifs[index],
                                  onTap: () {
                                    if (earlierNotifs[index]?.is_read ==
                                        false) {
                                      context.read<NotificationPageBloc>().add(
                                        NotificationPageEvent.readNotification(
                                          model: notificationModel.copyWith(
                                            id: earlierNotifs[index]?.id
                                                .toString(),
                                          ),
                                        ),
                                      );
                                    }
                                    context.pushNamed(
                                      RoutesName.serviceInfoPage,
                                      pathParameters: {
                                        "serviceId":
                                            earlierNotifs[index]
                                                ?.data?["booking_id"]
                                                .toString() ??
                                            "",
                                      },
                                    );
                                  },
                                ),
                              ),
                            )
                          else
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.h),
                              child: Center(
                                child: Text(
                                  LocaleKeys
                                      .notificationPage_noNotificationsAvailable
                                      .tr(),
                                  style: Theme.of(context).textTheme.labelMedium
                                      ?.copyWith(
                                        fontFamily: FontConstants.fontFamily(
                                          context.locale,
                                        ),
                                      ),
                                ),
                              ),
                            ),
                        ],
                      );
                    },
                    error: (message) => ErrorStateWidget(
                      lottieHeight: 200.h,
                      lottieWidth: 200.w,
                    ),
                    readNotificationSuccess: () => SizedBox.shrink(),
                    readAllNotificationSuccess: () => SizedBox.shrink(),
                    setReadNotificationError: (message) => SizedBox.shrink(),
                    noData: () => Center(
                      child: NodataStateWidget(
                        lottieHeight: 200.h,
                        lottieWidth: 200.w,
                      ),
                    ),
                    noInternetConnection: () => Center(
                      child: NoInternetStateWidget(
                        lottieHeight: 200.h,
                        lottieWidth: 200.w,
                      ),
                    ),
                    unauthenticated: () => Center(
                      child: ErrorStateWidget(
                        lottieHeight: 200.h,
                        lottieWidth: 200.w,
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
