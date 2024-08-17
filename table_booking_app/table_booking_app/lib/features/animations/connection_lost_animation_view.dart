import 'lottie_animation_view.dart';
import 'models/lottie_animation.dart';

class ConnectionLostAnimationView extends LottieAnimationView {
   ConnectionLostAnimationView({super.key})
      : super(
          animation: LottieAnimations.connectionLost,
        );
}
