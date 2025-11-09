import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/constants/paths/route_path.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/core/widgets/app_bars/app_bar_logo.dart';
import 'package:dotori/core/widgets/buttons/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarLogo.logoWithTextButton(
        onActionPressed: () {
          /// --- 🧱 둘러보기 라우팅
        },
        buttonText: '둘러보기',
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultPadding),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 42.h),
                Center(
                  child: Text(
                    '성향 맞는 룸메이트,\n찾기 힘드셨죠?',
                    style: context.textStyles.headLine1.copyWith(
                      color: AppColors.gray500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 14.h),
                Text(
                  '성향 기반으로 지금 바로 편한 룸메이트 찾기',
                  style: context.textStyles.body1.copyWith(
                    color: AppColors.gray300,
                  ),
                ),
                SizedBox(height: 82.h),
                Container(
                  width: 260.r,
                  height: 260.r,
                  color: AppColors.gray200,
                ),
                Spacer(),
                CustomElevatedButton.primary(
                  text: '시작하기',
                  height: 60.h,
                  width: double.infinity,
                  onPressed: () {
                    context.push(RoutePath.authMail);
                  },
                  textStyle: context.textStyles.btnText,
                  radius: AppSizes.radiusMD,
                ),
                SizedBox(height: AppSizes.bottomPadding),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
