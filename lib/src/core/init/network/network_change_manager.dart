import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_mobile_template/src/core/extensions/logging_extension.dart';

import '../../constants/enums/network_result_enums.dart';
import '../utils/typedefs.dart';

abstract class INetworkChangeManager {
  Future<NetworkResultEnums> checkNetworkFirstTime();
  void handleNetworkChange(NetworkCallBack onChange);
  void dispose();
}

class NetworkChangeManager extends INetworkChangeManager {
  late final Connectivity _connectivity;
  StreamSubscription<ConnectivityResult>? _subscription;

  NetworkChangeManager() {
    _connectivity = Connectivity();
  }

  @override
  Future<NetworkResultEnums> checkNetworkFirstTime() async {
    final connectivityResult = await (_connectivity.checkConnectivity());
    return checkConnectivityResult(connectivityResult);
  }

  @override
  void handleNetworkChange(NetworkCallBack onChange) {
    _subscription = _connectivity.onConnectivityChanged.listen((event) {
      event.log();
      onChange.call(checkConnectivityResult(event));
    });
  }

  @override
  void dispose() {
    _subscription?.cancel();
  }
}
