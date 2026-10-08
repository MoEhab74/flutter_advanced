import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/routing/app_routes.dart';
import 'package:flutter_advanced/core/theme/styles/app_colors.dart';
import 'package:flutter_advanced/core/theme/styles/app_text_styles.dart';
import 'package:flutter_advanced/core/widgets/app_sized_box.dart';
import 'package:go_router/go_router.dart';

// DontHaveAnAccountTextWidget
class DontHaveAnAccountTextWidget extends StatelessWidget {
  const DontHaveAnAccountTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: AppTextStyles.regular14.copyWith(
            color: AppColors.grey60,
          ),
        ),
        const AppSizedBox(width: 4),
        InkWell(
          onTap: () => context.go(AppRoutes.register),
          child: Text(
            'Sign Up',
            style: AppTextStyles.semiBold14.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
}