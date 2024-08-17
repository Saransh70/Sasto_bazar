import 'package:flutter/material.dart';

import '../../animations/connection_lost_animation_view.dart';
import '../strings/connection_lost_strings.dart';

class ConnectivityLostView extends StatelessWidget {
  const ConnectivityLostView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ConnectionLostStrings.oops,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Container(
                constraints: const BoxConstraints(
                  minHeight: 200,
                ),
                child: ConnectionLostAnimationView(),
              ),
              Text(
                ConnectionLostStrings.yourAreOffline,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 16),
              Text(
                ConnectionLostStrings.connectionIsLost,
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
