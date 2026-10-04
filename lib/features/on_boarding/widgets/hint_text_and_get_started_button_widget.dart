import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/routing/app_routes.dart';
import 'package:flutter_advanced/core/theme/styles/app_colors.dart';
import 'package:flutter_advanced/core/theme/styles/app_text_styles.dart';
import 'package:flutter_advanced/core/widgets/app_buttom.dart';
import 'package:flutter_advanced/core/widgets/app_sized_box.dart';
import 'package:go_router/go_router.dart';

class HintTextAndGetStartedButtonWidget extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Text(
            'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
            textAlign: TextAlign.center,
            style: AppTextStyles.regular14.copyWith(
              height: 1.5,
              color: AppColors.grey70,
            ),
          ),
          const AppSizedBox(height: 32),
          AppButton(
            text: 'Get Started',
            onPressed: () {
              context.go(AppRoutes.login);
            },
          ),
        ],
      ),
    );
  }
}
