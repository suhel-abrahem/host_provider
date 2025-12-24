import 'package:flutter/material.dart';

import 'routes_manager.dart';

class RouteTracker extends NavigatorObserver {
  String? previousRoute;
  String? currentRoute;

  @override
  void didPush(Route route, Route? previousRoute) {
    this.previousRoute = currentRoute;
    debugPrint('PUSH: $currentRoute (from $previousRoute)');
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    if (currentRoute?.endsWith(RoutesPath.bookingPage) == true) {
      navigatorKey.currentState?.replace(oldRoute: route, newRoute: route);
    }
    debugPrint('POP: Back to $currentRoute');
  }
}
