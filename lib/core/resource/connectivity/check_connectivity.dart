import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';

class CheckConnectivity {
  Future<List<ConnectivityResult>> checkConnectivity() async {
    // ignore: no_leading_underscores_for_local_identifiers
    final Connectivity _connectivity = Connectivity();
    late List<ConnectivityResult> result;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      result = await _connectivity.checkConnectivity();
      // ignore: unused_catch_clause
    } on PlatformException catch (e) {
      return [ConnectivityResult.none];
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.

    return result;
  }
}
