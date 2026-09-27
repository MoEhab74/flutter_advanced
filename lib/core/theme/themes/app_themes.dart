import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/theme/themes/dark_theme.dart';
import 'package:flutter_advanced/core/theme/themes/light_theme.dart';

abstract class AppTheme {
  static ThemeData get light => lightTheme;

  static ThemeData get dark => darkTheme;
}
