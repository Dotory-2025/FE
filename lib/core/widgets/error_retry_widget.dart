import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/core/widgets/buttons/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ErrorRetryWidget extends StatelessWidget {
  final VoidCallback onPressed;

  const ErrorRetryWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultPadding),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '서비스 이용이 원활하지 않아요',
                style: context.textStyles.sectionHeadline1.copyWith(
                  color: AppColors.gray500,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                '잠시 후에 다시 시도 해 주세요.',
                style: context.textStyles.body1.copyWith(
                  color: AppColors.gray300,
                ),
              ),
              SizedBox(height: 24.h),
              CustomElevatedButton(
                height: 40.h,
                width: 116.w,
                text: '다시 시도',
                onPressed: onPressed,
                textStyle: context.textStyles.body3.copyWith(
                  color: AppColors.background,
                ),
                radius: AppSizes.radiusSM,
              ),
              SizedBox(height: 28.h,),
            ],
          ),
        ),
      ),
    );
  }
}
