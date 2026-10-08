import 'package:flutter_advanced/core/utils/app_strings.dart';

String? validateEmail(String? email) {
  if (email == null || email.isEmpty) {
    return AppStrings.emailIsRequired;
  }
  // Use REGEX to validate email format
  final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
  if (!emailRegex.hasMatch(email)) {
    return AppStrings.invalidEmailFormat;
  }
  return null;
}

String? validatePassword(String? password) {
  if (password == null || password.isEmpty) {
    return AppStrings.passwordIsRequired;
  }
  if (password.length < 6) {
    return AppStrings.passwordMinLength;
  }
  return null;
}

String? validateConfirmPassword(String? password, String? confirmPassword) {
  if (confirmPassword == null || confirmPassword.isEmpty) {
    return AppStrings.confirmPasswordIsRequired;
  }
  if (confirmPassword != password) {
    return AppStrings.passwordsDoNotMatch;
  }
  return null;
}

String? validatePhone(String? phone) {
  if (phone == null || phone.isEmpty) {
    return AppStrings.phoneIsRequired;
  }
  final phoneRegex = RegExp(r'^[0-9]{10,15}$');
  if (!phoneRegex.hasMatch(phone)) {
    return AppStrings.invalidPhoneFormat;
  }
  return null;
}
