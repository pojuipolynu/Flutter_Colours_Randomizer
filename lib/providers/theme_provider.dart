import 'package:flutter/material.dart';

import 'package:flutter_colours_randomizer/constants/colour_randomizer.dart';
import 'package:flutter_colours_randomizer/constants/global_colours.dart';
import 'package:flutter_colours_randomizer/constants/global_text_styles.dart';

import 'package:shared_preferences/shared_preferences.dart';

///Notifier provider that handles colour changes
class ThemeProvider with ChangeNotifier {
  Color _currentBackgroundColour = GlobalColours.primaryColour;
  Color _currentTextColour = GlobalColours.textColour;

  ///Getter for background colour
  Color get currentBackgroundColour => _currentBackgroundColour;

  ///Getter for title text styling
  TextStyle get titleStyle => GlobalTextStyles.titleStyles(_currentTextColour);

  ///Constructor that handles data loading
  ThemeProvider() {
    loadNewColors();
  }

  ///Function for loading colours
  Future<void> loadNewColors() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final int? colorValue = prefs.getInt('currentColour');
    if (colorValue != null) {
      _currentBackgroundColour = Color(colorValue);
      _currentTextColour = ColourRandomizer().getInvertedColour(
        _currentBackgroundColour,
      );
      notifyListeners();
    }
  }

  ///Function for updating colours
  void changeColours() {
    _currentBackgroundColour = ColourRandomizer().randomColour;
    _currentTextColour = ColourRandomizer().getInvertedColour(
      _currentBackgroundColour,
    );
    saveColours();
    notifyListeners();
  }

  ///Function for saving new colours in Shared Preferences
  Future<void> saveColours() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentColour', _currentBackgroundColour.toARGB32());
  }
}
