// TermsAndConditionsTextSpanWidget
import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/theme/styles/app_colors.dart';
import 'package:flutter_advanced/core/theme/styles/app_text_styles.dart';


class TermsAndConditionsTextWidget extends StatelessWidget {
  const TermsAndConditionsTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: AppTextStyles.regular14.copyWith(color: AppColors.grey60),
        children: const [
          TextSpan(text: 'By logging, you agree to our '),
          TextSpan(
            text: 'Terms & Conditions',
            style: TextStyle(color: AppColors.black),
          ),
          TextSpan(text: ' and '),
          TextSpan(
            text: 'Privacy Policy',
            style: TextStyle(color: AppColors.black),
          ),
        ],
      ),
    );
  }
}