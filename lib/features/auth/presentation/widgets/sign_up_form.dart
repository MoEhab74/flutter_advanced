import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/functions/animated_snack_bar.dart';
import 'package:flutter_advanced/core/functions/validate_auth_fields.dart';
import 'package:flutter_advanced/core/widgets/app_buttom.dart';
import 'package:flutter_advanced/core/widgets/app_sized_box.dart';
import 'package:flutter_advanced/core/widgets/app_text_field_widget.dart';
import 'package:flutter_advanced/features/auth/presentation/manager/sign_up/sign_up_cubit.dart';
import 'package:flutter_advanced/features/auth/presentation/manager/sign_up/sign_up_state.dart';
import 'package:flutter_advanced/features/auth/presentation/widgets/already_have_account_text_widget.dart';
import 'package:flutter_advanced/features/auth/presentation/widgets/or_sign_in_with_widget.dart';
import 'package:flutter_advanced/features/auth/presentation/widgets/social_media_button_widget.dart';
import 'package:flutter_advanced/features/auth/presentation/widgets/terms_and_conditions_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _phoneController;
  late GlobalKey<FormState> _formKey;

  @override
  void initState() {
    _emailController = context.read<SignUpCubit>().emailController;
    _passwordController = context.read<SignUpCubit>().passwordController;
    _phoneController = context.read<SignUpCubit>().phoneController;
    _formKey = context.read<SignUpCubit>().formKey;
    super.initState();
  }

  @override
  void dispose() {
    _formKey.currentState?.reset();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listenWhen: (previous, current) =>
          current is Loading ||
          current is RegisterSuccess ||
          current is RegisterError,
      listener: (context, state) {
        state.whenOrNull(
          registerSuccess: (registerResponseModel) {
            showAnimatedSnackbar(
              context,
              message: 'Registration Successful',
              type: AnimatedSnackBarType.success,
            );
            //todo: navigate to home or login
          },
          registerError: (errorMessage) {
            showAnimatedSnackbar(
              context,
              message: errorMessage,
              type: AnimatedSnackBarType.error,
            );
          },
        );
      },
      builder: (context, state) {
        final bool isLoading = state is Loading;
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
              // Phone
              AppTextField(
                label: '',
                hintText: 'Enter your phone number',
                prefixIcon: Icons.phone_outlined,
                controller: _phoneController,
                validator: validatePhone,
              ),
              const AppSizedBox(height: 20),
              isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : AppButton(
                      text: 'Sign Up',
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          context.read<SignUpCubit>().emitRegisterState();
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
                  SocialMediaCircleButtonWidget(
                    imagePath: 'assets/svgs/apple.svg',
                  ),
                ],
              ),

              const AppSizedBox(height: 32),
              // TermsAndConditionsTextWidget
              const TermsAndConditionsTextWidget(),
              const AppSizedBox(height: 24),
              // Already have an account? Login
              const AlreadyHaveAccountTextWidget(),
            ],
          ),
        );
      },
    );
  }
}
