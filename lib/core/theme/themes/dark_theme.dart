import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/theme/styles/app_colors.dart';
import 'package:flutter_advanced/core/theme/styles/app_text_styles.dart';

final ThemeData darkTheme = ThemeData(
  useMaterial3: true,

  brightness: Brightness.dark,

  scaffoldBackgroundColor: AppColors.black,

  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.primary80,
    onPrimary: AppColors.black,
    primaryContainer: Color(0xFF103A70),
    onPrimaryContainer: AppColors.primary40,

    secondary: AppColors.fillGreen,
    onSecondary: AppColors.black,
    secondaryContainer: Color(0xFF0F4D25),
    onSecondaryContainer: AppColors.surfaceGreen,

    tertiary: AppColors.primary60,
    onTertiary: AppColors.black,
    tertiaryContainer: Color(0xFF1E3A60),
    onTertiaryContainer: AppColors.primary20,

    error: AppColors.fillRed,
    onError: AppColors.black,
    errorContainer: Color(0xFF681A22),
    onErrorContainer: AppColors.surfaceRed,

    surface: AppColors.black,
    onSurface: AppColors.white,
    onSurfaceVariant: AppColors.grey50,

    surfaceContainerLow: Color(0xFF1C1C1C),
    surfaceContainer: AppColors.grey100,
    surfaceContainerHigh: AppColors.grey90,
    surfaceContainerHighest: AppColors.grey80,

    outline: AppColors.grey70,
    outlineVariant: AppColors.grey90,
    shadow: Color(0x66000000),
  ),

  textTheme: TextTheme(
    displayLarge: AppTextStyles.bold40.copyWith(color: AppColors.white),
    headlineLarge: AppTextStyles.semiBold32.copyWith(color: AppColors.white),
    headlineMedium: AppTextStyles.semiBold28.copyWith(color: AppColors.white),
    titleMedium: AppTextStyles.semiBold20.copyWith(color: AppColors.white),
    bodyLarge: AppTextStyles.regular18.copyWith(color: AppColors.white),
    bodyMedium: AppTextStyles.regular16.copyWith(color: AppColors.grey40),
    labelMedium: AppTextStyles.medium14.copyWith(color: AppColors.grey40),
    labelSmall: AppTextStyles.semiBold12.copyWith(color: AppColors.grey50),
  ),

  appBarTheme: const AppBarTheme(
    elevation: 0,
    centerTitle: false,
    backgroundColor: Colors.transparent,
    foregroundColor: AppColors.white,
  ),

  dividerColor: AppColors.grey90,

  cardTheme: CardThemeData(
    color: AppColors.grey100,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
      side: const BorderSide(color: AppColors.grey90),
    ),
  ),

  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: AppColors.grey100,

    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(24),
      borderSide: const BorderSide(color: AppColors.grey90),
    ),

    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(24),
      borderSide: const BorderSide(color: AppColors.grey90),
    ),

    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(24),
      borderSide: const BorderSide(color: AppColors.primary80, width: 2),
    ),

    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(24),
      borderSide: const BorderSide(color: AppColors.fillRed, width: 2),
    ),
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      minimumSize: const Size(double.infinity, 56),
      backgroundColor: AppColors.primary80,
      foregroundColor: AppColors.black,
      shape: const StadiumBorder(),
    ),
  ),

  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      minimumSize: const Size(double.infinity, 56),
      side: const BorderSide(color: AppColors.grey80),
      shape: const StadiumBorder(),
    ),
  ),
);
