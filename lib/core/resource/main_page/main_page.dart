import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:go_router/go_router.dart';
import 'package:hosta_provider/core/enums/login_state_enum.dart';
import 'package:hosta_provider/core/resource/color_manager.dart';
import 'package:hosta_provider/core/resource/main_page/set_fcm_token_for_current_user.dart';
import 'package:hosta_provider/features/login_page/domain/entities/login_state_entity.dart';
import 'package:hosta_provider/generated/locale_keys.g.dart';
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
        if (mounted) {
          showDialog(
            context: context,
            builder: (context) {
              return Center(
                child: AlertDialog(
                  constraints: BoxConstraints(
                    minWidth: 300.w,
                    minHeight: 320.h,
                    maxWidth: 300.w,
                    maxHeight: 320.h,
                  ),
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  title: Center(
                    child: Text(
                      message.notification?.title ??
                          LocaleKeys.notificationPage_noTitle.tr(),
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        fontFamily: FontConstants.fontFamily(context.locale),
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  icon: Icon(
                    Icons.notifications_active,
                    color: Theme.of(context).colorScheme.primary,
                    shadows: [
                      BoxShadow(
                        color: Theme.of(context).shadowColor,
                        blurRadius: 8.r,
                        offset: Offset(0, 4.h),
                      ),
                    ],
                    size: 28.sp,
                  ).animate().shake(duration: 1600.ms),
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        child: Text(
                          "${LocaleKeys.notificationPage_body.tr()}:",
                          style: Theme.of(context).textTheme.labelMedium
                              ?.copyWith(
                                fontFamily: FontConstants.fontFamily(
                                  context.locale,
                                ),
                              ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.w,
                          vertical: 8.h,
                        ),
                        child: Container(
                          height: 90.h,
                          width: 284.w,
                          padding: EdgeInsets.symmetric(
                            vertical: 16.h,
                            horizontal: 16.w,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            color: Theme.of(
                              context,
                            ).colorScheme.primaryContainer,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                message.notification?.body ??
                                    LocaleKeys.notificationPage_noBody.tr(),
                                style: Theme.of(context).textTheme.labelMedium
                                    ?.copyWith(
                                      fontFamily: FontConstants.fontFamily(
                                        context.locale,
                                      ),
                                    ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        context.pop();
                      },
                      child: Text(
                        LocaleKeys.notificationPage_ok.tr(),
                        style: Theme.of(context).textTheme.labelMedium
                            ?.copyWith(
                              fontFamily: FontConstants.fontFamily(
                                context.locale,
                              ),
                              color: Theme.of(context).primaryColor,
                            ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        context.pop();
                        context.pushNamed(
                          RoutesName.serviceInfoPage,
                          pathParameters: {
                            "serviceId": message.data["booking_id"].toString(),
                          },
                        );
                      },
                      child: Text(
                        LocaleKeys.notificationPage_show.tr(),
                        style: Theme.of(context).textTheme.labelMedium
                            ?.copyWith(
                              fontFamily: FontConstants.fontFamily(
                                context.locale,
                              ),
                              color: Theme.of(context).primaryColor,
                            ),
                      ),
                    ),
                  ],
                ),
              );
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
      FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
        if (mounted) {
          context.pushNamed(
            RoutesName.serviceInfoPage,
            pathParameters: {
              "serviceId": message.data["booking_id"].toString(),
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
          context.pushNamed(
            RoutesName.serviceInfoPage,
            pathParameters: {
              "serviceId": initialMessage.data["booking_id"].toString(),
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
      ],
    );
  }
}
