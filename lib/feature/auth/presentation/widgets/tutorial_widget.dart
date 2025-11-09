import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TutorialWidget extends StatelessWidget {
  final String description;
  final String? image;

  const TutorialWidget({super.key, required this.description, this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          description,
          style: context.textStyles.body1.copyWith(color: AppColors.gray300),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 40.h),
        Container(width: 280.r, height: 380.r, color: AppColors.gray200),
      ],
    );
  }
}
