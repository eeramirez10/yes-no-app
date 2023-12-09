import 'package:flutter/material.dart';

  const Color _custom = Color(0xFF49149f);

  const  List<Color> _colorThemes = [
    _custom,
    Colors.blue,
    Colors.teal,
    Colors.deepPurple
  ];


class AppTheme {

  final int selectedColor;

  AppTheme({ 
    this.selectedColor = 0
  }): assert(selectedColor >= 0 &&  selectedColor < _colorThemes.length, 'Color must be between 0 to ${_colorThemes.length - 1}');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor]
    );
  }
}
