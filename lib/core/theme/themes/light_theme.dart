import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/theme/styles/app_colors.dart';
import 'package:flutter_advanced/core/theme/styles/app_text_styles.dart';

final ThemeData lightTheme = ThemeData(
  useMaterial3: true,

  brightness: Brightness.light,

  scaffoldBackgroundColor: AppColors.background,

  colorScheme: const ColorScheme(
    brightness: Brightness.light,

    primary: AppColors.primary,
    onPrimary: AppColors.onPrimary,
    primaryContainer: AppColors.primaryContainer,
    onPrimaryContainer: AppColors.onPrimaryContainer,

    secondary: AppColors.secondary,
    onSecondary: AppColors.onSecondary,
    secondaryContainer: AppColors.secondaryContainer,
    onSecondaryContainer: AppColors.onSecondaryContainer,

    tertiary: AppColors.tertiary,
    onTertiary: AppColors.onTertiary,
    tertiaryContainer: AppColors.tertiaryContainer,
    onTertiaryContainer: AppColors.onTertiaryContainer,

    error: AppColors.error,
    onError: AppColors.onError,
    errorContainer: AppColors.errorContainer,
    onErrorContainer: AppColors.onErrorContainer,

    surface: AppColors.surface,
    onSurface: AppColors.onSurface,
    onSurfaceVariant: AppColors.onSurfaceVariant,

    surfaceContainerLow: AppColors.surfaceLow,
    surfaceContainer: AppColors.surfaceContainer,
    surfaceContainerHigh: AppColors.surfaceHigh,
    surfaceContainerHighest: AppColors.surfaceHighest,

    outline: AppColors.outline,
    outlineVariant: AppColors.outlineVariant,
    shadow: AppColors.shadow,
  ),

  textTheme: TextTheme(
    displayLarge: AppTextStyles.bold40.copyWith(color: AppColors.onSurface),
    headlineLarge: AppTextStyles.semiBold32.copyWith(color: AppColors.onSurface),
    headlineMedium: AppTextStyles.semiBold28.copyWith(color: AppColors.onSurface),
    titleMedium: AppTextStyles.semiBold20.copyWith(color: AppColors.onSurface),
    bodyLarge: AppTextStyles.regular18.copyWith(color: AppColors.onSurface),
    bodyMedium: AppTextStyles.regular16.copyWith(color: AppColors.onSurfaceVariant),
    labelMedium: AppTextStyles.medium14.copyWith(color: AppColors.onSurfaceVariant),
    labelSmall: AppTextStyles.semiBold12.copyWith(color: AppColors.outline),
  ),

  dividerColor: AppColors.outlineVariant,

  cardColor: AppColors.surfaceLowest,

  splashFactory: InkRipple.splashFactory,

  appBarTheme: const AppBarTheme(
    elevation: 0,
    centerTitle: false,
    backgroundColor: Colors.transparent,
    foregroundColor: AppColors.onSurface,
  ),

  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: AppColors.surfaceLow,
    hintStyle: AppTextStyles.regular14.copyWith(
      color: AppColors.onSurfaceVariant,
    ),

    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(
        color: AppColors.outlineVariant,
      ),
    ),

    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(
        color: AppColors.outlineVariant,
      ),
    ),

    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(
        color: AppColors.primary,
        width: 1.5,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(
        color: AppColors.error,
        width: 1.5,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(
        color: AppColors.error,
        width: 2,
      ),
    ),
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      minimumSize: const Size(double.infinity, 52),
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
  ),

  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      minimumSize: const Size(double.infinity, 52),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      side: const BorderSide(
        color: AppColors.outlineVariant,
      ),
    ),
  ),

  cardTheme: CardThemeData(
    elevation: 0,
    color: AppColors.surfaceLowest,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
      side: const BorderSide(
        color: AppColors.border,
      ),
    ),
  ),
);