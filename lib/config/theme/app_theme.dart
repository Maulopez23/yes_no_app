import 'package:flutter/material.dart';

const Color _customcolor = Color(0xFF5C11D4);

const List<Color> _colorthemes = [
  _customcolor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor < _colorthemes.length,
            'Colors must be between 0 and ${_colorthemes.length}');

  ThemeData theme() {
    return ThemeData(useMaterial3: true, colorSchemeSeed: _colorthemes[0]);
  }
}
