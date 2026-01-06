import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:go_router/go_router.dart';
import '/core/resource/main_page/booking_notification_widget.dart';
import '/core/resource/main_page/message_notification_widget.dart';

import '/core/enums/login_state_enum.dart';
import '/core/resource/color_manager.dart';
import '/core/resource/main_page/set_fcm_token_for_current_user.dart';
import '/features/login_page/domain/entities/login_state_entity.dart';
import '/generated/locale_keys.g.dart';
import '../../../config/app/app_preferences.dart';
import '../../../config/route/routes_manager.dart';

import '../../constants/font_constants.dart';

import '../../dependencies_injection.dart';

import '../custom_widget/snake_bar_widget/snake_bar_widget.dart';

import 'drawer.dart';

class MainPage extends StatefulWidget {
  final PreferredSizeWidget? appBar;
  final Widget body;
  final String? title;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;
  final bool? haveBottomBar;
  final Widget? navigationTaps;
  final Widget? drawer;
  final String? pagePath;
  final ValueChanged<bool>? onAnimationComplete;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;
  const MainPage({
    super.key,
    required this.body,
    this.title,
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.navigationTaps,
    this.actions,
    this.pagePath,
    this.drawer,
    this.haveBottomBar,
    this.appBar,
    this.bottom,
    this.onAnimationComplete,
  });

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  double yOffset = 0;
  bool animationDone = false;
  List<RemoteMessage?>? notifications = [];
  double startPosition = 0;
  RemoteMessage? lastMessage;
  void checkSessionValidity() {
    final loginState = getItInstance<AppPreferences>().getUserInfo();
    if (loginState == null ||
        loginState.loginStateEnum != LoginStateEnum.logined) {
      if (mounted) {
        context.go(RoutesPath.loginPage);
      }
    }
  }

  Future<void> getMessage() async {
    try {
      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        print('Got a message whilst in the foreground!: ${message.data}');
        if (mounted) {
          message.data["type"].toString().contains("booking")
              ? lastMessage != message
                    ? showDialog(
                        context: context,
                        builder: (context) => StatefulBuilder(
                          builder: (context, setState) {
                            return BookingNotificationWidget(message: message);
                          },
                        ),
                      )
                    : null
              : setState(() {
                  if (!(notifications?.contains(message) ?? true) &&
                      ((notifications?.length ?? 0) <= 10)) {
                    notifications?.add(message);
                  } else if ((notifications?.length ?? 0) >= 10) {
                    notifications = [
                      RemoteMessage(
                        messageId: "more_than_10_notifications",
                        notification: RemoteNotification(
                          title: LocaleKeys
                              .notificationPage_youHaveMoreThen10Notifications
                              .tr(),
                          body: LocaleKeys
                              .notificationPage_youHaveMoreThen10Notifications
                              .tr(),
                        ),
                        data: {"sender_image": ""},
                      ),
                    ];
                  }
                });
          lastMessage = message;
        }
      });
    } catch (e) {
      if (mounted) {
        showMessage(
          message: LocaleKeys.common_someThingWentWrongWhileShowNotification
              .tr(),
          context: context,
        );
      }
    }
    try {
      FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
        if (mounted) {
          message.data["type"].toString().contains("booking")
              ? context.pushNamed(
                  RoutesName.serviceInfoPage,
                  pathParameters: {
                    "serviceId": message.data["booking_id"].toString(),
                  },
                )
              : context.pushNamed(
                  RoutesName.chatPage,
                  pathParameters: {
                    "chatId": message.data["conversationId"] ?? "",
                    "bookingNumber": message.data["bookingId"] ?? "",
                  },
                );
        }
      });
    } catch (e) {
      if (mounted) {
        showMessage(
          message: LocaleKeys.common_someThingWentWrongWhileShowNotification
              .tr(),
          context: context,
        );
      }
    }
    try {
      RemoteMessage? initialMessage = await FirebaseMessaging.instance
          .getInitialMessage();
      if (initialMessage != null) {
        if (mounted) {
          initialMessage.data["type"].toString().contains("booking")
              ? context.pushNamed(
                  RoutesName.serviceInfoPage,
                  pathParameters: {
                    "serviceId": initialMessage.data["booking_id"].toString(),
                  },
                )
              : context.pushNamed(
                  RoutesName.chatPage,
                  pathParameters: {
                    "chatId": initialMessage.data["conversationId"] ?? "",
                    "bookingNumber": initialMessage.data["bookingId"] ?? "",
                  },
                );
        }
      }
    } catch (e) {
      if (mounted) {
        showMessage(
          message: LocaleKeys.common_someThingWentWrongWhileShowNotification
              .tr(),
          context: context,
        );
      }
    }
  }

  Future<void> onTokenRefresh() async {
    FirebaseMessaging.instance.onTokenRefresh.listen((newToken) async {
      final LoginStateEntity? loginState = getItInstance<AppPreferences>()
          .getUserInfo();
      if (newToken != loginState?.fcmToken) {
        await getItInstance<AppPreferences>().setUserInfo(
          loginStateEntity: loginState?.copyWith(
            fcmToken: newToken,
            isFcmTokenSet: false,
          ),
        );
        if (mounted) {
          await setFcmTokenForCurrentUser(context: context);
        }
      }
    });
  }

  @override
  void initState() {
    checkSessionValidity();
    super.initState();
    setFcmTokenForCurrentUser(context: context);
    onTokenRefresh();
    getMessage();
  }

  @override
  didChangeDependencies() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness:
            (getItInstance<AppPreferences>().getAppTheme() ?? false)
            ? Brightness.dark
            : Brightness.light,
        statusBarIconBrightness:
            (getItInstance<AppPreferences>().getAppTheme() ?? false)
            ? Brightness.dark
            : Brightness.light,
      ),
    );
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedPositioned(
          duration: 300.ms,
          curve: Curves.easeInOut,
          top: 0,
          left: 0,
          right: 0,
          bottom: 0,
          child: GestureDetector(
            onVerticalDragUpdate: (details) {
              setState(() {
                yOffset += details.delta.dy;
                if (yOffset < 0) {
                  yOffset = 0;
                } else if (yOffset > 100) {
                  yOffset = 100;
                }
              });
            },
            onVerticalDragCancel: () {
              setState(() {
                yOffset = 0;
              });
            },
            onVerticalDragEnd: (details) {
              if (yOffset > 90) {
                setState(() {
                  yOffset = 0;
                  animationDone = false;
                });
                print(
                  "user info: ${getItInstance<AppPreferences>().getUserInfo()}",
                );
                if (getItInstance<AppPreferences>()
                        .getUserInfo()
                        ?.loginStateEnum ==
                    LoginStateEnum.logined) {
                  String _currentPath = currentPath ?? RoutesPath.homePage;
                  if (context.canPop()) {
                    context.pop();
                  }
                  context.push(_currentPath);
                } else {
                  context.go(RoutesPath.loginPage);
                }
                setState(() {
                  yOffset = 0;
                });
              } else {
                setState(() {
                  yOffset = 0;
                });
              }
            },
            child: ThemeSwitchingArea(
              child: Scaffold(
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                appBar:
                    widget.appBar ??
                    PreferredSize(
                      preferredSize: Size.fromHeight(
                        widget.haveBottomBar == true ? 110.h : 50.h,
                      ),
                      child: Center(
                        child: AppBar(
                          shadowColor: Theme.of(context).shadowColor,
                          backgroundColor: Theme.of(context).primaryColor,
                          centerTitle: true,
                          title: Text(
                            widget.title ?? "",
                            style: Theme.of(context).textTheme.labelLarge
                                ?.copyWith(
                                  fontFamily: FontConstants.fontFamily(
                                    context.locale,
                                  ),
                                  color: ColorManager.backgroundColor,
                                ),
                          ),
                          leading: SizedBox(
                            width: 36.w,
                            height: 36.h,
                            child: Center(
                              child: Builder(
                                builder: (builderContext) {
                                  return ElevatedButton(
                                    style: Theme.of(context)
                                        .elevatedButtonTheme
                                        .style
                                        ?.copyWith(
                                          backgroundColor:
                                              WidgetStatePropertyAll(
                                                Colors.transparent,
                                              ),
                                          shape: WidgetStatePropertyAll(
                                            CircleBorder(eccentricity: 0),
                                          ),
                                          padding: WidgetStatePropertyAll(
                                            EdgeInsets.all(0),
                                          ),
                                          shadowColor: WidgetStatePropertyAll(
                                            Colors.transparent,
                                          ),
                                        ),
                                    onPressed: () {
                                      Scaffold.of(builderContext).openDrawer();
                                    },
                                    child: Icon(
                                      Icons.menu,
                                      size: 28.sp,
                                      color: ColorManager.backgroundColor,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          actions:
                              widget.actions ??
                              [
                                IconButton(
                                  onPressed: context.canPop()
                                      ? () => context.canPop()
                                            ? context.pop()
                                            : showMessage(
                                                message: "Can not pop",
                                                context: context,
                                              )
                                      : null,
                                  icon: Icon(
                                    Icons.arrow_back_ios,
                                    size: 32.sp,
                                    color: context.canPop()
                                        ? ColorManager.backgroundColor
                                        : Theme.of(context).disabledColor,
                                  ),
                                ),
                              ],
                          bottom: widget.bottom,
                        ).animate().slideX(duration: 500.ms),
                      ),
                    ),
                body: RepaintBoundary(
                  child: widget.body
                      .animate()
                      .scaleXY(duration: 600.ms, curve: Curves.easeInOut)
                      .callback(
                        delay: Duration(milliseconds: 100),
                        callback: (_) {
                          if (!animationDone) {
                            animationDone = true;
                            if (widget.onAnimationComplete != null) {
                              widget.onAnimationComplete!(animationDone);
                            }
                          }
                        },
                      ),
                ),

                drawer: widget.drawer ?? CustomDrawer(),
                floatingActionButton: widget.floatingActionButton,

                floatingActionButtonLocation:
                    FloatingActionButtonLocation.endFloat,
              ),
            ),
          ),
        ),
        AnimatedPositioned(
          duration: 300.ms,
          top: yOffset.h,
          left: 0,
          right: 0,

          child: AnimatedOpacity(
            duration: Duration(milliseconds: 300),
            opacity: yOffset == 0 ? 0.0 : 1.0,
            child: Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).shadowColor,
                      blurRadius: 8.r,
                      offset: Offset(0, (4 * (yOffset / 100)).h),
                    ),
                  ],
                ),
                child: AnimatedRotation(
                  duration: Duration(milliseconds: 300),
                  turns: yOffset / 100,
                  child: Icon(Icons.refresh, size: 40.sp, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        if (notifications != null && notifications?.isNotEmpty == true)
          Positioned(
            top: 10.h,
            left: 0,
            right: 0,
            child: SizedBox(
              height: 100.h + ((notifications?.length ?? 0)) * 5.h,
              width: 360.w,
              child: Stack(
                key: ValueKey(notifications?.length ?? UniqueKey()),
                children: [
                  ...List.generate(notifications?.length ?? 0, (index) {
                    return Positioned(
                      top: index * 5.h,
                      left: 0,
                      right: 0,
                      child: MessageNotificationWidget(
                        message: notifications?[index],
                        onRemove: (val) {
                          setState(() {
                            notifications?.removeAt(index);
                          });
                        },
                      ),
                    );
                  }),
                ],
              ),
            ),
          ).animate().slideY(duration: 500.ms, begin: -1.0),
      ],
    );
  }
}
