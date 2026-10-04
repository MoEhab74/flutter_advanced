import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/theme/styles/app_colors.dart';
import 'package:flutter_advanced/core/theme/styles/app_text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextField extends StatefulWidget {
  final String label;
  final String hintText;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final bool isPassword;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const AppTextField({
    super.key,
    required this.label,
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon,
    this.isPassword = false,
    required this.controller,
    this.validator,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late bool _isObscured;

  @override
  void initState() {
    super.initState();
    _isObscured = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: widget.controller,
          obscureText: _isObscured,
          validator: widget.validator,

          style: AppTextStyles.regular16.copyWith(color: colorScheme.onSurface),

          decoration: InputDecoration(
            hintText: widget.hintText,

            hintStyle: AppTextStyles.regular14.copyWith(
              color: AppColors.grey50,
            ),

            prefixIcon: Icon(
              widget.prefixIcon,
              color: colorScheme.outline,
              size: 20.w,
            ),

            suffixIcon: widget.isPassword
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        _isObscured = !_isObscured;
                      });
                    },
                    icon: Icon(
                      _isObscured
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: colorScheme.outline,
                      size: 20.w,
                    ),
                  )
                : widget.suffixIcon != null
                ? Icon(
                    widget.suffixIcon,
                    color: colorScheme.outline,
                    size: 20.w,
                  )
                : null,

            contentPadding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 16.h,
            ),
          ),
        ),
      ],
    );
  }
}
