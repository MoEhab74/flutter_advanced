import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/theme/styles/app_text_styles.dart';
import 'package:flutter_advanced/core/widgets/app_sized_box.dart';
import 'package:flutter_advanced/features/auth/presentation/widgets/sign_up_form.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

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
                    'Create Account',
                    style: AppTextStyles.bold24.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const AppSizedBox(height: 4),
                  Text(
                    "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
                    style: AppTextStyles.regular14.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),

                  const AppSizedBox(height: 32),
                   const SignUpForm(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
