import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/theme/styles/app_text_styles.dart';
import 'package:flutter_advanced/core/widgets/app_sized_box.dart';
import 'package:flutter_advanced/features/on_boarding/widgets/doctor_and_background_widget.dart';
import 'package:flutter_advanced/features/on_boarding/widgets/hint_text_and_get_started_button_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                const AppSizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/svgs/logo.svg',
                      height: 32.h,
                      width: 64.w,
                    ),
                    AppSizedBox(width: 4.w),
                    Text(
                      'docdoc',
                      style: AppTextStyles.bold24.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  ],
                ),
                const AppSizedBox(height: 40),
                const DoctorAndBackgroundWidget(),
                const AppSizedBox(height: 16),
                const HintTextAndGetStartedButtonWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



