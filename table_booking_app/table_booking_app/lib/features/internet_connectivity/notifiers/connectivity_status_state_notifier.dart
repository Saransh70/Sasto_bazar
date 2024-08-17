import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../enum/connectivity_status.dart';

class ConnectivityStatusStateNotifier
    extends StateNotifier<ConnectivityStatus> {
  late ConnectivityStatus newState;
  late ConnectivityStatus lastResult;
  ConnectivityStatusStateNotifier() : super(ConnectivityStatus.isConnected) {
    lastResult = state;

    Connectivity()
        .onConnectivityChanged
        .listen((List<ConnectivityResult> result) {
      for (final res in result) {
        if (res == ConnectivityResult.mobile ||
            res == ConnectivityResult.wifi) {
          newState = ConnectivityStatus.isConnected;
        } else {
          newState = ConnectivityStatus.isDisconnected;
        }
      }

      if (newState != lastResult) {
        state = newState;
        lastResult = newState;
      }
    });
  }
}
