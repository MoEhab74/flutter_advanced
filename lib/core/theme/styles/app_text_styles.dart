import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTextStyles {
  AppTextStyles._();

  static TextStyle _base({
    required double fontSize,
    required FontWeight fontWeight,
    double? height,
    double letterSpacing = 0,
    Color? color,
  }) {
    return GoogleFonts.inter(
      fontSize: fontSize.sp,
      fontWeight: fontWeight,
      height: height,
      letterSpacing: letterSpacing,
      color: color,
    );
  }

  //============================================================================
  // Inter - Bold (w700)
  //============================================================================
  static TextStyle get bold40 => _base(
    fontSize: 40,
    fontWeight: FontWeight.w700,
    height: 48 / 40,
    letterSpacing: -0.02,
  );

  static TextStyle get bold32 => _base(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    height: 40 / 32,
    letterSpacing: -0.02,
  );

  static TextStyle get bold24 => _base(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    height: 32 / 24,
    letterSpacing: -0.01,
  );

  static TextStyle get bold20 =>
      _base(fontSize: 20, fontWeight: FontWeight.w700, height: 28 / 20);

  static TextStyle get bold18 =>
      _base(fontSize: 18, fontWeight: FontWeight.w700, height: 26 / 18);

  static TextStyle get bold16 =>
      _base(fontSize: 16, fontWeight: FontWeight.w700, height: 24 / 16);

  static TextStyle get bold14 =>
      _base(fontSize: 14, fontWeight: FontWeight.w700, height: 20 / 14);

  static TextStyle get bold12 =>
      _base(fontSize: 12, fontWeight: FontWeight.w700, height: 16 / 12);

  //============================================================================
  // Inter - SemiBold (w600)
  //============================================================================
  static TextStyle get semiBold32 => _base(
    fontSize: 32,
    fontWeight: FontWeight.w600,
    height: 40 / 32,
    letterSpacing: -0.01,
  );

  static TextStyle get semiBold28 =>
      _base(fontSize: 28, fontWeight: FontWeight.w600, height: 36 / 28);

  static TextStyle get semiBold24 =>
      _base(fontSize: 24, fontWeight: FontWeight.w600, height: 32 / 24);

  static TextStyle get semiBold20 =>
      _base(fontSize: 20, fontWeight: FontWeight.w600, height: 28 / 20);

  static TextStyle get semiBold18 =>
      _base(fontSize: 18, fontWeight: FontWeight.w600, height: 26 / 18);

  static TextStyle get semiBold16 =>
      _base(fontSize: 16, fontWeight: FontWeight.w600, height: 24 / 16);

  static TextStyle get semiBold14 =>
      _base(fontSize: 14, fontWeight: FontWeight.w600, height: 20 / 14);

  static TextStyle get semiBold13 =>
      _base(fontSize: 13, fontWeight: FontWeight.w600, height: 18 / 13);

  static TextStyle get semiBold12 => _base(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    height: 16 / 12,
    letterSpacing: 0.05,
  );

  //============================================================================
  // Inter - Medium (w500)
  //============================================================================
  static TextStyle get medium24 =>
      _base(fontSize: 24, fontWeight: FontWeight.w500, height: 32 / 24);

  static TextStyle get medium20 =>
      _base(fontSize: 20, fontWeight: FontWeight.w500, height: 28 / 20);

  static TextStyle get medium18 =>
      _base(fontSize: 18, fontWeight: FontWeight.w500, height: 26 / 18);

  static TextStyle get medium16 =>
      _base(fontSize: 16, fontWeight: FontWeight.w500, height: 24 / 16);

  static TextStyle get medium15 =>
      _base(fontSize: 15, fontWeight: FontWeight.w500, height: 22 / 15);

  static TextStyle get medium14 => _base(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 20 / 14,
    letterSpacing: 0.01,
  );

  static TextStyle get medium13 =>
      _base(fontSize: 13, fontWeight: FontWeight.w500, height: 18 / 13);

  static TextStyle get medium12 =>
      _base(fontSize: 12, fontWeight: FontWeight.w500, height: 16 / 12);

  //============================================================================
  // Inter - Regular (w400)
  //============================================================================
  static TextStyle get regular24 =>
      _base(fontSize: 24, fontWeight: FontWeight.w400, height: 32 / 24);

  static TextStyle get regular20 =>
      _base(fontSize: 20, fontWeight: FontWeight.w400, height: 28 / 20);

  static TextStyle get regular18 =>
      _base(fontSize: 18, fontWeight: FontWeight.w400, height: 28 / 18);

  static TextStyle get regular16 =>
      _base(fontSize: 16, fontWeight: FontWeight.w400, height: 24 / 16);

  static TextStyle get regular14 =>
      _base(fontSize: 14, fontWeight: FontWeight.w400, height: 20 / 14);

  static TextStyle get regular13 =>
      _base(fontSize: 13, fontWeight: FontWeight.w400, height: 18 / 13);

  static TextStyle get regular12 =>
      _base(fontSize: 12, fontWeight: FontWeight.w400, height: 16 / 12);
}
