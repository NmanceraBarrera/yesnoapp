import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF0065AD);
const List<Color> _colorsThemes = [
  _customColor,
  Colors.indigo,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorsThemes.length - 1,
            'Selected color must be between 0 and ${_colorsThemes.length - 1}');
  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorsThemes[selectedColor],
    );
  }
}
