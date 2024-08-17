import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../enum/connectivity_status.dart';
import '../notifiers/connectivity_status_state_notifier.dart';

final connectivityStatusProvider =
    StateNotifierProvider<ConnectivityStatusStateNotifier, ConnectivityStatus>(
  (_) => ConnectivityStatusStateNotifier(),
);
