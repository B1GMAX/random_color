import 'dart:math';
import 'dart:ui';

import 'package:rxdart/rxdart.dart';

/// HomePage Bloc
class HomeBloc {
  final _changeColorController = BehaviorSubject<Color>();

  /// Random color stream
  Stream<Color> get changeColorStream => _changeColorController.stream;

  /// Generate random colors using RGB and send them to stream
  void colorChange() {
    final random = Random();
    const _maxColorNumber = 255;

    _changeColorController.add(
      Color.fromRGBO(
        random.nextInt(_maxColorNumber),
        random.nextInt(_maxColorNumber),
        random.nextInt(_maxColorNumber),
        1,
      ),
    );
  }

  /// Close streams
  void dispose() {
    _changeColorController.close();
  }
}
