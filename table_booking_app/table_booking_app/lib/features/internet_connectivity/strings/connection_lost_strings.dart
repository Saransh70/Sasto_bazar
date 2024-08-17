import 'package:flutter/foundation.dart' show immutable;

@immutable
class ConnectionLostStrings {
  const ConnectionLostStrings._();

  static const String oops = 'Ooops!';
  static const String connectionIsLost =
      'Connection is lost. Please, check your Internet or Mobile network.';
  static const String yourAreOffline = 'You\'re offline.';
}
