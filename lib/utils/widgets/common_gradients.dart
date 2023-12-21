import 'package:flutter/material.dart';

import '../constants.dart';

LinearGradient yellowGradient({double multiplayer = 1}) {
  return LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [
      kOrangeGradientLight2,
      kOrangeGradientLight3,
      kOrangeGradientLight4,
    ],
    stops: [
      0.0,
      0.7 * multiplayer,
      1,
    ],
    transform: GradientRotation(30 / 180), // Angle in radians
  );
}
