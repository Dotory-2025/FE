import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/core/widgets/buttons/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

/// 하우스 생성 완료 화면
class HouseCreationCompleteScreen extends StatelessWidget {
  const HouseCreationCompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              // 체크 아이콘
              Center(
                child: Container(
                  width: 80.r,
                  height: 80.r,
                  decoration: BoxDecoration(
                    color: AppColors.gray500,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.check,
                    color: AppColors.background,
                    size: 48.r,
                  ),
                ),
              ),
              SizedBox(height: 32.h),
              // 완료 메시지
              Text(
                '생성이 완료되었습니다.',
                style: context.textStyles.headLine1.copyWith(
                  color: AppColors.gray500,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 12.h),
              Text(
                '깨끗한 도토리 문화를 위해 기여해 주셔서 감사합니다.',
                style: context.textStyles.body2.copyWith(
                  color: AppColors.gray400,
                ),
                textAlign: TextAlign.center,
              ),
              Spacer(),
              Spacer(),
              // 본문으로 가기 버튼
              SizedBox(
                width: double.infinity,
                height: 56.h,
                child: CustomElevatedButton.primary(
                  text: '본문으로 가기',
                  radius: 8.r,
                  onPressed: () {
                    // TODO: 홈 화면이나 하우스 목록으로 이동
                    context.go('/');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
