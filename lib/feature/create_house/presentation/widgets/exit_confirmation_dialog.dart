import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// 작성 중 나가기 확인 다이얼로그
class ExitConfirmationDialog extends StatelessWidget {
  const ExitConfirmationDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.background,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      child: Padding(
        padding: EdgeInsets.all(24.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '정말로 나가시겠습니까?',
              style: context.textStyles.subHeadline2.copyWith(
                color: AppColors.gray500,
              ),
            ),
            SizedBox(height: 12.h),
            Text(
              '작성하신 내용은 저장되지 않습니다.',
              style: context.textStyles.body2.copyWith(
                color: AppColors.gray400,
              ),
            ),
            SizedBox(height: 24.h),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).pop(false), // 계속하기
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 14.h),
                      decoration: BoxDecoration(
                        color: AppColors.gray500,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Text(
                        '계속하기',
                        textAlign: TextAlign.center,
                        style: context.textStyles.btnText.copyWith(
                          color: AppColors.background,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).pop(true), // 나가기
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 14.h),
                      decoration: BoxDecoration(
                        color: AppColors.gray100,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Text(
                        '나가기',
                        textAlign: TextAlign.center,
                        style: context.textStyles.btnText.copyWith(
                          color: AppColors.gray500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
