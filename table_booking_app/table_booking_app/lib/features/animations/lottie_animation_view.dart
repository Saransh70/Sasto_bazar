import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'models/lottie_animation.dart';

class LottieAnimationView extends StatelessWidget {
  final LottieAnimations animation;

  const LottieAnimationView({
    super.key,
    required this.animation,
  });

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      animation.fullPath,
      repeat: true,
      reverse: false,
    );
  }
}

extension GetFullPathAnimation on LottieAnimations {
  // Note: name = parameter in LottieAnimations enum
  String get fullPath => 'assets/animations/$name.json';
}
