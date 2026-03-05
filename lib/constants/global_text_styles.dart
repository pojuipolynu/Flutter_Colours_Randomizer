import 'package:flutter/material.dart';

///Class for text styling constants
class GlobalTextStyles {
  ///Variable of title text sizes
  static const double titleFontSize = 30.0;

  ///Variable of bold text styling
  static TextStyle titleStyles(Color color) => TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: titleFontSize,
    color: color,
  );
}
