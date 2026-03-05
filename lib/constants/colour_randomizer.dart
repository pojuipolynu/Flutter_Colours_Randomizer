import 'dart:math';
import 'package:flutter/material.dart';

///Class for creating random colours
class ColourRandomizer {
  final int _maxRGBRange = 255;
  final int _alpha = 255;

  ///Getter for created colour
  Color get randomColour => _createColour();

  ///Constructor
  ColourRandomizer();

  Color _createColour() {
    return Color.fromARGB(
      _alpha,
      Random().nextInt(_maxRGBRange + 1),
      Random().nextInt(_maxRGBRange + 1),
      Random().nextInt(_maxRGBRange + 1),
    );
  }

  ///Function for creating inverted colour
  Color getInvertedColour(Color currentColour) {
    return Color.fromARGB(
      _alpha,
      _maxRGBRange -
          (currentColour.r * _maxRGBRange.toDouble()).round().clamp(
            0,
            _maxRGBRange,
          ),
      _maxRGBRange -
          (currentColour.g * _maxRGBRange.toDouble()).round().clamp(
            0,
            _maxRGBRange,
          ),
      _maxRGBRange -
          (currentColour.b * _maxRGBRange.toDouble()).round().clamp(
            0,
            _maxRGBRange,
          ),
    );
  }
}
