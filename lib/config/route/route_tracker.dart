import 'package:flutter/material.dart';

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
    debugPrint('POP: Back to $currentRoute');
  }
}
