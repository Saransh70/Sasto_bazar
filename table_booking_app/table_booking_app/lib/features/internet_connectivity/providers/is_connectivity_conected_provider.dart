import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../enum/connectivity_status.dart';
import 'connectivity_status_provider.dart';

final isConnectivityConnectedProvider = Provider<bool>((ref){

  final connectionStatus = ref.watch(connectivityStatusProvider);
  return connectionStatus == ConnectivityStatus.isConnected;
});