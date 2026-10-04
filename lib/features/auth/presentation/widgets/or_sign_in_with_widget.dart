import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/theme/styles/app_colors.dart';
import 'package:flutter_advanced/core/theme/styles/app_text_styles.dart';

// OrSignInWithWidget
class OrSignInWithWidget extends StatelessWidget {
  const OrSignInWithWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider(color: AppColors.grey60, thickness: 0.5)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'Or Sign in with',
            style: AppTextStyles.regular14.copyWith(color: AppColors.grey60),
          ),
        ),
        const Expanded(child: Divider(color: AppColors.grey60, thickness: 0.5)),
      ],
    );
  }
}