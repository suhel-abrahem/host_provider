import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hosta_provider/config/route/routes_manager.dart';

class RouteTracker extends NavigatorObserver {
  String? previousRoute;

  @override
  void didPush(Route route, Route? previousRoute) {
    this.previousRoute = currentPath;
    currentPath = route.settings.name;
    debugPrint('PUSH: $currentPath (from $previousRoute)');
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    currentPath = previousRoute?.settings.name ?? '/';
    if (navigatorKey.currentContext != null) {
      navigatorKey.currentContext!.go(currentPath ?? RoutesPath.homePage);
    }
    debugPrint('POP: Back to $currentPath');
  }
}
