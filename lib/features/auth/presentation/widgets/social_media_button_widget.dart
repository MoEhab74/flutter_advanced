import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

//SocialMediaCircleButtonWidget
class SocialMediaCircleButtonWidget extends StatelessWidget {
  final String imagePath;
  const SocialMediaCircleButtonWidget({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[200],
      ),
      child: SvgPicture.asset(imagePath, height: 24.h, width: 24.w),
    );
  }
}