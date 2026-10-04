import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/theme/styles/app_text_styles.dart';
import 'package:flutter_advanced/core/widgets/app_sized_box.dart';
import 'package:flutter_advanced/features/auth/presentation/widgets/login_form.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppSizedBox(height: 50),
                  Text(
                    'Welcome Back',
                    style: AppTextStyles.bold24.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const AppSizedBox(height: 4),
                  Text(
                    "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                    style: AppTextStyles.regular14.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),

                  const AppSizedBox(height: 32),
                   const LoginForm(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}









