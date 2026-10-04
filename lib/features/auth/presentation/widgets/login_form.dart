import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/functions/validate_auth_fields.dart';
import 'package:flutter_advanced/core/widgets/app_buttom.dart';
import 'package:flutter_advanced/core/widgets/app_sized_box.dart';
import 'package:flutter_advanced/core/widgets/app_text_field_widget.dart';
import 'package:flutter_advanced/features/auth/presentation/widgets/dont_have_an_account_text_widget.dart';
import 'package:flutter_advanced/features/auth/presentation/widgets/or_sign_in_with_widget.dart';
import 'package:flutter_advanced/features/auth/presentation/widgets/remember_me_check_box_widget.dart';
import 'package:flutter_advanced/features/auth/presentation/widgets/social_media_button_widget.dart';
import 'package:flutter_advanced/features/auth/presentation/widgets/terms_and_conditions_widget.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _formKey.currentState?.reset();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          // Email
          AppTextField(
            label: '',
            hintText: 'Enter your email',
            prefixIcon: Icons.email_outlined,
            controller: _emailController,
            validator: validateEmail,
          ),
          const AppSizedBox(height: 16),
          // Password
          AppTextField(
            label: '',
            hintText: 'Enter your password',
            prefixIcon: Icons.lock_outline,
            isPassword: true,
            controller: _passwordController,
            validator: validatePassword,
          ),
          const AppSizedBox(height: 16),
          // Remember Me and Forgot Password
          const RememberMeCheckBoxWidget(),
          const AppSizedBox(height: 20),
          AppButton(
            text: 'Login',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                debugPrint('Email: ${_emailController.text}');
                debugPrint('Password: ${_passwordController.text}');
              } else {
                debugPrint('Invalid email or password');
              }
            },
          ),

          const AppSizedBox(height: 32),
          const OrSignInWithWidget(),
          const AppSizedBox(height: 32),
          // Social Media Buttons
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SocialMediaCircleButtonWidget(
                imagePath: 'assets/svgs/google.svg',
              ),
              SocialMediaCircleButtonWidget(
                imagePath: 'assets/svgs/facebook.svg',
              ),
              SocialMediaCircleButtonWidget(imagePath: 'assets/svgs/apple.svg'),
            ],
          ),

          const AppSizedBox(height: 32),
          // TermsAndConditionsTextWidget
          const TermsAndConditionsTextWidget(),
          const AppSizedBox(height: 24),
          // have no account yet? create one
          const DontHaveAnAccountTextWidget(),
        ],
      ),
    );
  }
}