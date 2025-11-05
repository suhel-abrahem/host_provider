import 'dart:convert';

import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hosta_provider/config/app/app_preferences.dart';
import 'package:hosta_provider/config/route/route_tracker.dart';
import 'package:hosta_provider/core/dependencies_injection.dart';
import 'package:hosta_provider/core/enums/login_state_enum.dart';
import 'package:hosta_provider/features/categories_page/domain/entities/category_entity.dart';
import 'package:hosta_provider/features/categories_page/presentation/pages/categories_page_page.dart';
import 'package:hosta_provider/features/category_services_page/presentation/widgets/category_services_page_page.dart';
import 'package:hosta_provider/features/first_use_page/presentation/screens/first_use_page.dart';
import 'package:hosta_provider/features/home_page/presentation/pages/home_page_page.dart';
import 'package:hosta_provider/features/login_page/presentation/screens/login_page.dart';
import 'package:hosta_provider/features/my_services_page/presentation/pages/my_services_page_page.dart';
import 'package:hosta_provider/features/otp_page/presentation/pages/otp_page_page.dart';
import 'package:hosta_provider/features/profile_page/presentation/pages/profile_page_page.dart';
import 'package:hosta_provider/features/signup_page/presentation/pages/signup_page.dart';

import '../../core/resource/main_page/main_bottom_bar.dart';
import '../../core/resource/main_page/main_page.dart';
import '../../features/booking_page/presentation/pages/booking_page_page.dart';

class RoutesName {
  static String homePage = "homePage";
  static String categoriesPage = "categoriesPage";
  static String settingPage = "settingPage";
  static String categoryPage = "categoryPage";
  static String loginPage = "loginPage";
  static String firstUsePage = "firstUsePage";
  static String signupPage = "signupPage";
  static String bookingPage = "bookingPage";
  static String myServicesPage = "myServicesPage";
  static String profilePage = "profilePage";
  static String otpPage = "otpPage";
  static String categoryServicesPage = "categoryServicesPage";
}

class RoutesPath {
  static String homePage = '/';
  static String categoriesPage = '/categories';
  static String settingPage = '/setting';
  static String categoryPage = '/category';
  static String loginPage = '/login';
  static String firstUsePage = '/firstUse';
  static String signupPage = '/signup';
  static String bookingPage = '/booking';
  static String myServicesPage = '/myServices';
  static String profilePage = '/profile';
  static String otpPage = "/otpPage";
  static String categoryServicesPage = "/categoryServicesPage/:categoryEntity";
}

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
GoRouter goRouter = GoRouter(
  observers: [RouteTracker()],
  redirect: (context, state) {
    print("Current route: ${state.uri.toString()}");
    if (getItInstance<AppPreferences>().isFirstUse() == false) {
      return RoutesPath.firstUsePage;
    } else if (getItInstance<AppPreferences>().getUserInfo()?.loginStateEnum ==
            LoginStateEnum.unlogined &&
        !(state.uri.toString().endsWith(RoutesPath.signupPage) ||
            state.uri.toString().endsWith(RoutesPath.otpPage))) {
      print(state.fullPath);
      return RoutesPath.loginPage;
    }

    return null;
  },
  initialLocation: RoutesPath.homePage,
  navigatorKey: navigatorKey,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => ThemeSwitchingArea(
        child: Scaffold(
          body: navigationShell,
          bottomNavigationBar:
              !(state.uri.toString().endsWith(RoutesPath.loginPage) ||
                  state.uri.toString().endsWith(RoutesPath.firstUsePage) ||
                  state.uri.toString().endsWith(RoutesPath.signupPage) ||
                  state.uri.toString().endsWith(RoutesPath.otpPage))
              ? MainBottomBar(
                  currentIndex: _routerToIndex(state.uri.toString()),
                )
              : null,
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
                  child: BookingPagePage(),
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
