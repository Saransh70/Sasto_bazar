import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../auth/presentation/view/sign_in_view.dart';
import '../../../internet_connectivity/providers/is_connectivity_conected_provider.dart';
import '../../../internet_connectivity/view/connectivity_lost_view.dart';

class DeciderView extends StatelessWidget {
  const DeciderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        // handling internet connectiviy status
        final isConnectivityConnected =
            ref.watch(isConnectivityConnectedProvider);

        // return connectivity lost UI
        if (isConnectivityConnected == false) {
          return const ConnectivityLostView();
        } else {
          return const SignInView();
        }
      },
    );
  }
}
