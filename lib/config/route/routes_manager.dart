import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hosta_provider/config/app/app_preferences.dart';
import 'package:hosta_provider/config/route/route_tracker.dart';
import 'package:hosta_provider/core/dependencies_injection.dart';
import 'package:hosta_provider/core/enums/login_state_enum.dart';
import 'package:hosta_provider/features/first_use_page/presentation/screens/first_use_page.dart';
import 'package:hosta_provider/features/home_page/presentation/pages/home_page_page.dart';
import 'package:hosta_provider/features/login_page/presentation/screens/login_page.dart';
import 'package:hosta_provider/features/signup_page/presentation/pages/signup_page.dart';

import '../../core/resource/main_page/main_bottom_bar.dart';
import '../../core/resource/main_page/main_page.dart';

class RoutesName {
  static String homePage = "homePage";
  static String categoriesPage = "categoriesPage";
  static String settingPage = "settingPage";
  static String categoryPage = "categoryPage";
  static String loginPage = "loginPage";
  static String firstUsePage = "firstUsePage";
  static String signupPage = "signupPage";
}

class RoutesPath {
  static String homePage = '/';
  static String categoriesPage = '/categories';
  static String settingPage = '/setting';
  static String categoryPage = '/category';
  static String loginPage = '/login';
  static String firstUsePage = '/firstUse';
  static String signupPage = '/signup';
}

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
GoRouter goRouter = GoRouter(
  observers: [RouteTracker()],
  redirect: (context, state) {
    if (getItInstance<AppPreferences>().isFirstUse() == false) {
      return RoutesPath.firstUsePage;
    } //  else if (getItInstance<AppPreferences>().getUserInfo()?.loginStateEnum ==
    //         LoginStateEnum.unlogined &&
    //     !(state.uri.toString().endsWith(RoutesPath.signupPage))) {
    //   print(state.fullPath);
    //   return RoutesPath.loginPage;
    // }
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
              (state.uri.toString().endsWith(RoutesPath.loginPage) &&
                  state.uri.toString().endsWith(RoutesPath.firstUsePage))
              ? MainBottomBar(currentRoute: state.uri.toString())
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
          ],
        ),
        StatefulShellBranch(
          routes: [
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
