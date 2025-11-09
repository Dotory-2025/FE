import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/constants/enums/routine.dart';
import 'package:dotori/core/constants/paths/route_path.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/core/widgets/app_bars/app_bar_back.dart';
import 'package:dotori/core/widgets/buttons/custom_elevated_button.dart';
import 'package:dotori/feature/auth/presentation/widgets/indicataors/custom_percent_indicator.dart';
import 'package:dotori/feature/auth/presentation/widgets/toggles/routine_toggle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class AuthRoutineScreen extends StatelessWidget {
  const AuthRoutineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarBack.back(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomPercentIndicatioer(
                percent: 4 / 4,
                height: 2.h,
                borderRadius: 2.r,
              ),
              SizedBox(height: 42.h),
              Text(
                '생활 패턴',
                style: context.textStyles.headLine1.copyWith(
                  color: AppColors.gray500,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                '오기입 시 정확한 피드백을 받기 어려울 수 있습니다.',
                style: context.textStyles.body1.copyWith(
                  color: AppColors.gray400,
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '추후 ',
                      style: context.textStyles.btnText.copyWith(
                        letterSpacing: (20.sp * 0.20 / 100).w,
                        height: 28 / 16,
                        fontSize: 16.sp,
                        color: AppColors.gray400,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'PretendardVariable',
                      ),
                    ),
                    TextSpan(
                      text: '설정 → 계정설정 ',
                      style: context.textStyles.btnText.copyWith(
                        letterSpacing: (20.sp * 0.20 / 100).w,
                        height: 28 / 16,
                        fontSize: 16.sp,
                        color: AppColors.gray500,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'PretendardVariable',
                      ),
                    ),
                    TextSpan(
                      text: '에서 변경할 수 있습니다.',
                      style: context.textStyles.btnText.copyWith(
                        letterSpacing: (20.sp * 0.20 / 100).w,
                        height: 28 / 16,
                        fontSize: 16.sp,
                        color: AppColors.gray400,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'PretendardVariable',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 36.h,),
              Wrap(
                spacing: 8.w, // 좌우 간격
                runSpacing: 16.h, // 줄 간격
                children: RoutineCategory.values.map((category) {
                  return RoutineToggle(category: category);
                }).toList(),
              ),
              Spacer(),
              CustomElevatedButton.primary(
                text: '완료',
                height: 60.h,
                width: double.infinity,
                onPressed: () {
                  context.push(RoutePath.authProfile);
                },
                textStyle: context.textStyles.btnText,
                radius: AppSizes.radiusMD,
              ),
              SizedBox(height: AppSizes.bottomPadding),
            ],
          ),
        ),
      ),
    );
  }
}
