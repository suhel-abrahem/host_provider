import 'dart:convert';

import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import '../app/app_preferences.dart';
import 'route_tracker.dart';
import '../../core/dependencies_injection.dart';
import '../../core/enums/login_state_enum.dart';
import '../../features/booking_page/presentation/pages/service_info_page.dart';
import '../../features/categories_page/domain/entities/category_entity.dart';
import '../../features/categories_page/presentation/pages/categories_page_page.dart';
import '../../features/category_services_page/presentation/pages/category_services_page_page.dart';
import '../../features/first_use_page/presentation/screens/first_use_page.dart';
import '../../features/home_page/presentation/pages/home_page_page.dart';
import '../../features/login_page/presentation/screens/login_page.dart';
import '../../features/my_services_page/presentation/pages/my_services_page_page.dart';
import '../../features/otp_page/presentation/pages/otp_page_page.dart';
import '../../features/profile_page/presentation/pages/profile_page_page.dart';
import '../../features/signup_page/presentation/pages/signup_page.dart';

import '../../core/resource/main_page/main_bottom_bar.dart';

import '../../features/booking_page/presentation/pages/booking_page_page.dart';

import '../../features/profile_page/presentation/pages/account_page_page.dart';
import '../../features/profile_page/presentation/pages/help_page_page.dart';
import '../../features/profile_page/presentation/pages/setting_page_page.dart';

String? currentPath = RoutesPath.homePage;

class RoutesName {
  static String homePage = "homePage";
  static String categoriesPage = "categoriesPage";
  static String settingPage = "settingPage";
  static String categoryPage = "categoryPage";
  static String loginPage = "loginPage";
  static String firstUsePage = "firstUsePage";
  static String signupPage = "signupPage";
  static String bookingPage = "bookingPage";
  static String serviceInfoPage = "serviceInfoPage";
  static String myServicesPage = "myServicesPage";
  static String profilePage = "profilePage";
  static String otpPage = "otpPage";
  static String categoryServicesPage = "categoryServicesPage";
  static String accountPage = "accountPage";
  static String settingsPage = "settingsPage";
  static String helpPage = "helpPage";
}

class RoutesPath {
  static String homePage = '/';
  static String categoriesPage = '/categories';
  static String settingPage = '/setting';
  static String categoryPage = '/category';
  static String loginPage = '/login';
  static String firstUsePage = '/firstUse';
  static String signupPage = '/signup';
  static String bookingPage = '/booking/:pageIndex';
  static String myServicesPage = '/myServices';
  static String profilePage = '/profile';
  static String otpPage = "/otpPage";
  static String categoryServicesPage = "/categoryServicesPage/:categoryEntity";
  static String serviceInfoPage = "/serviceInfoPage/:serviceId";
  static String accountPage = "/accountPage";
  static String settingsPage = "/settingsPage";
  static String helpPage = "/helpPage";
}

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
GoRouter goRouter = GoRouter(
  observers: [RouteTracker()],
  redirect: (context, state) {
    currentPath = state.uri.toString();
    if (getItInstance<AppPreferences>().isFirstUse() == false) {
      return RoutesPath.firstUsePage;
    } else if (getItInstance<AppPreferences>().getUserInfo()?.loginStateEnum ==
            LoginStateEnum.unlogined &&
        !(state.uri.toString().endsWith(RoutesPath.signupPage) ||
            state.uri.toString().endsWith(RoutesPath.otpPage))) {
      return RoutesPath.loginPage;
    }

    return null;
  },
  initialLocation: RoutesPath.homePage,
  navigatorKey: navigatorKey,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => ThemeSwitchingArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                const Color.fromARGB(255, 35, 89, 116).withValues(alpha: 0.9),
                Color.fromARGB(255, 11, 56, 102).withValues(alpha: 0.8),
                Color.fromARGB(255, 4, 38, 75),
              ],
              stops: const [0.0, 0.5, 1.0],
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: navigationShell,
            bottomNavigationBar:
                !(state.uri.toString().endsWith(RoutesPath.loginPage) ||
                    state.uri.toString().endsWith(RoutesPath.firstUsePage) ||
                    state.uri.toString().endsWith(RoutesPath.signupPage) ||
                    state.uri.toString().endsWith(RoutesPath.otpPage))
                ? MainBottomBar(
                    key: ValueKey(currentPath),
                    currentIndex: _routerToIndex(currentPath ?? ""),
                  ).animate().scaleY(duration: 500.ms)
                : null,
          ),
        ),
      ),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutesPath.firstUsePage,
              name: RoutesName.firstUsePage,
              pageBuilder: (context, state) => _customTransitionPage(
                child: const FirstUsePage(),
                state: state,
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutesPath.loginPage,
              name: RoutesName.loginPage,
              pageBuilder: (context, state) =>
                  _customTransitionPage(child: const LoginPage(), state: state),
            ),
            GoRoute(
              path: RoutesPath.signupPage,
              name: RoutesName.signupPage,
              pageBuilder: (context, state) => _customTransitionPage(
                child: const SignupPage(),
                state: state,
              ),
            ),
            GoRoute(
              path: RoutesPath.otpPage,
              name: RoutesName.otpPage,
              pageBuilder: (context, state) => _customTransitionPage(
                child: const OtpPagePage(),
                state: state,
              ),
            ),
          ],
        ),

        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutesPath.categoriesPage,
              name: RoutesName.categoriesPage,
              pageBuilder: (context, state) {
                return _customTransitionPage(
                  child: CategoriesPagePage(),
                  state: state,
                );
              },
            ),
            GoRoute(
              path: RoutesPath.myServicesPage,
              name: RoutesName.myServicesPage,
              pageBuilder: (context, state) {
                return _customTransitionPage(
                  child: MyServicesPagePage(),
                  state: state,
                );
              },
            ),
            GoRoute(
              path: RoutesPath.categoryServicesPage,
              name: RoutesName.categoryServicesPage,
              pageBuilder: (context, state) {
                return _customTransitionPage(
                  child: CategoryServicesPagePage(
                    categoryEntity: CategoryEntity.fromJson(
                      jsonDecode(state.pathParameters["categoryEntity"] ?? ""),
                    ),
                  ),
                  state: state,
                );
              },
            ),
            GoRoute(
              path: RoutesPath.homePage,
              name: RoutesName.homePage,
              pageBuilder: (context, state) {
                return _customTransitionPage(
                  child: HomePagePage(),
                  state: state,
                );
              },
            ),
            GoRoute(
              path: RoutesPath.bookingPage,
              name: RoutesName.bookingPage,
              pageBuilder: (context, state) {
                return _customTransitionPage(
                  child: BookingPagePage(
                    initialIndex:
                        int.tryParse(
                          state.pathParameters["pageIndex"] ?? "0",
                        ) ??
                        0,
                  ),
                  state: state,
                );
              },
            ),
            GoRoute(
              path: RoutesPath.serviceInfoPage,
              name: RoutesName.serviceInfoPage,
              pageBuilder: (context, state) {
                return _customTransitionPage(
                  child: ServiceInfoPage(
                    serviceId: state.pathParameters["serviceId"],
                  ),
                  state: state,
                );
              },
            ),
            GoRoute(
              path: RoutesPath.profilePage,
              name: RoutesName.profilePage,
              pageBuilder: (context, state) {
                return _customTransitionPage(
                  child: ProfilePagePage(),
                  state: state,
                );
              },
            ),
            GoRoute(
              path: RoutesPath.accountPage,
              name: RoutesName.accountPage,
              pageBuilder: (context, state) {
                return _customTransitionPage(
                  child: AccountPagePage(),
                  state: state,
                );
              },
            ),
            GoRoute(
              path: RoutesPath.settingPage,
              name: RoutesName.settingPage,
              pageBuilder: (context, state) {
                return _customTransitionPage(
                  child: SettingPagePage(),
                  state: state,
                );
              },
            ),
            GoRoute(
              path: RoutesPath.helpPage,
              name: RoutesName.helpPage,
              pageBuilder: (context, state) {
                return _customTransitionPage(
                  child: HelpPagePage(),
                  state: state,
                );
              },
            ),
          ],
        ),
      ],
    ),
  ],
);
CustomTransitionPage _customTransitionPage({
  required Widget child,
  GoRouterState? state,
}) {
  return CustomTransitionPage(
    transitionDuration: Duration(milliseconds: 300),
    reverseTransitionDuration: Duration(milliseconds: 300),
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        key: state?.pageKey,
        opacity: animation.drive(CurveTween(curve: Curves.easeInOut)),
        // opacity: animation,
        child: child,
      );
    },
  );
}

int _routerToIndex(String path) {
  int output = 0;
  if (path.endsWith(RoutesPath.homePage)) {
    output = 0;
  } else if (path.endsWith(RoutesPath.bookingPage)) {
    output = 1;
  } else if (path.endsWith(RoutesPath.myServicesPage)) {
    output = 2;
  } else if (path.endsWith(RoutesPath.profilePage)) {
    output = 3;
  } else {
    output = 0;
  }
  return output;
}
