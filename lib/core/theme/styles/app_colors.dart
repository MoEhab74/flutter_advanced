import 'package:flutter/material.dart';

abstract final class AppColors {
  AppColors._();

  //============================================================================
  // Background Colors (Figma Design System)
  //============================================================================
  static const Color white = Color(0xFFFFFFFF);
  static const Color body = Color(0xFF7A7A7A);
  static const Color black = Color(0xFF161616);

  //============================================================================
  // Grey Color Scale (Figma Design System)
  //============================================================================
  static const Color grey100 = Color(0xFF242424);
  static const Color grey90 = Color(0xFF404040);
  static const Color grey80 = Color(0xFF616161);
  static const Color grey70 = Color(0xFF757575);
  static const Color grey60 = Color(0xFF9E9E9E);
  static const Color grey50 = Color(0xFFC2C2C2);
  static const Color grey40 = Color(0xFFE0E0E0);
  static const Color grey30 = Color(0xFFEDEDED);
  static const Color grey20 = Color(0xFFF5F5F5);

  //============================================================================
  // Primary Color Scale (Figma Design System)
  //============================================================================
  static const Color primary100 = Color(0xFF247CFF);
  static const Color primary80 = Color(0xFF5096FF);
  static const Color primary60 = Color(0xFF7CB0FF);
  static const Color primary40 = Color(0xFFD3E5FF);
  static const Color primary20 = Color(0xFFEAF2FF);
  static const Color primarySurface = Color(0xFFA7CBFF);

  //============================================================================
  // Secondary, Surface & Fill Colors (Figma Design System)
  //============================================================================
  static const Color surfaceBlue = Color(0xFFEAF2FF);
  static const Color surfaceGreen = Color(0xFFE9FAEF);
  static const Color surfaceRed = Color(0xFFFFECEF);

  static const Color fillBlue = Color(0xFF247CFF);
  static const Color fillGreen = Color(0xFF22C55E);
  static const Color fillRed = Color(0xFFFF4C5E);

  static const Color surfaceText = Color(0xFFFAFAFB);
  static const Color form = Color(0xFFFDFDFF);
  static const Color chat = Color(0xFFF8F9FD);

  //============================================================================
  // Warning Color Scale (Figma Design System)
  //============================================================================
  static const Color warning100 = Color(0xFFFFD600);
  static const Color warning80 = Color(0xFFFCF99D);
  static const Color warning60 = Color(0xFFF7F16B);
  static const Color warning40 = Color(0xFFEFE746);
  static const Color warning20 = Color(0xFFE5DA0D);
  static const Color warningSurface = Color(0xFFC4BA09);

  //============================================================================
  // Semantic Material 3 Theme Tokens
  //============================================================================
  static const Color primary = primary100;
  static const Color onPrimary = white;
  static const Color primaryContainer = primary20;
  static const Color onPrimaryContainer = primary100;

  static const Color secondary = fillGreen;
  static const Color onSecondary = white;
  static const Color secondaryContainer = surfaceGreen;
  static const Color onSecondaryContainer = Color(0xFF1E823E);

  static const Color tertiary = primary60;
  static const Color onTertiary = white;
  static const Color tertiaryContainer = primary40;
  static const Color onTertiaryContainer = primary100;

  // Surface & Background
  static const Color background = white;
  static const Color surface = white;
  static const Color surfaceDim = grey30;
  static const Color surfaceBright = white;

  static const Color surfaceLowest = white;
  static const Color surfaceLow = surfaceText;
  static const Color surfaceContainer = grey20;
  static const Color surfaceHigh = grey30;
  static const Color surfaceHighest = grey40;
  static const Color surfaceVariant = grey20;

  // Text & Content
  static const Color onBackground = grey100;
  static const Color onSurface = grey100;
  static const Color onSurfaceVariant = grey70;

  static const Color inverseSurface = grey100;
  static const Color inverseOnSurface = white;

  // Outline & Borders
  static const Color outline = grey50;
  static const Color outlineVariant = grey30;
  static const Color border = grey30;

  // Feedback & Status
  static const Color error = fillRed;
  static const Color onError = white;
  static const Color errorContainer = surfaceRed;
  static const Color onErrorContainer = fillRed;

  // Fixed Roles
  static const Color primaryFixed = primary80;
  static const Color primaryFixedDim = primary60;
  static const Color secondaryFixed = surfaceGreen;
  static const Color secondaryFixedDim = fillGreen;
  static const Color tertiaryFixed = primary40;
  static const Color tertiaryFixedDim = primary20;

  // Shadows & Glow
  static const Color shadow = Color(0x0D000000);
  static const Color glow = Color(0x26247CFF);
}