import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/theme/styles/app_colors.dart';
import 'package:flutter_advanced/core/theme/styles/app_text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorAndBackgroundWidget extends StatelessWidget {
  const DoctorAndBackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/svgs/doc_background.svg'),
        Positioned(
          right: 0,
          top: 0,
          bottom: 0,
          left: -275,
          child: Container(
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.white,
                  AppColors.white.withValues(alpha: 0.2),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.center,
                stops: const [0.1, 0.5],
              ),
            ),
            height: 500.h,
            child: Image.asset('assets/images/doctor.png', fit: BoxFit.cover),
          ),
        ),
        Positioned(
          top: 350.h,
          left: 0,
          right: 0,
          child: Text(
            'Best Doctor Appointment App',
            textAlign: TextAlign.center,
            style: AppTextStyles.bold32.copyWith(
              height: 1.5,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
}
