import 'package:flutter/material.dart';

class RouteTracker extends NavigatorObserver {
  String? previousRoute;
  String? currentRoute;

  @override
  void didPush(Route route, Route? previousRoute) {
    this.previousRoute = currentRoute;
    currentRoute = route.settings.name;
    debugPrint('PUSH: $currentRoute (from $previousRoute)');
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    currentRoute = previousRoute?.settings.name ?? '/';
    debugPrint('POP: Back to $currentRoute');
  }
}
