import 'package:flutter/material.dart';
import 'package:mp_corporation_app/core/theme/color_theme.dart';
import 'package:mp_corporation_app/core/theme/text_theme.dart';

class AppTheme{
  static ThemeData get lightTheme {
    return ThemeData(
      textTheme: CustomTextTheme.textTheme(),
      useMaterial3: true,
      colorScheme: CustomColorTheme.colorScheme
    );
  }
}