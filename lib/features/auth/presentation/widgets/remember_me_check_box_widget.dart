import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/theme/styles/app_colors.dart';
import 'package:flutter_advanced/core/theme/styles/app_text_styles.dart';

class RememberMeCheckBoxWidget extends StatefulWidget {
  const RememberMeCheckBoxWidget({super.key});

  @override
  State<RememberMeCheckBoxWidget> createState() =>
      _RememberMeCheckBoxWidgetState();
}

class _RememberMeCheckBoxWidgetState extends State<RememberMeCheckBoxWidget> {
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          side: const BorderSide(color: AppColors.grey60, width: 1),
          value: _rememberMe,
          onChanged: (value) {
            setState(() {
              _rememberMe = value ?? false;
            });
          },
        ),
        Text(
          'Remember me',
          style: AppTextStyles.regular14.copyWith(color: AppColors.grey60),
        ),
        const Spacer(),
        Text(
          'Forgot Password?',
          style: AppTextStyles.regular14.copyWith(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ],
    );
  }
}


