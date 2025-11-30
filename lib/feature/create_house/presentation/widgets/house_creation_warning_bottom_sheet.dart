import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/core/widgets/buttons/custom_elevated_button.dart';
import 'package:dotori/core/widgets/modal_bottom_sheets/blurred_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// 하우스 생성 전 경고 바텀시트
class HouseCreationWarningBottomSheet extends StatelessWidget {
  final VoidCallback onConfirm;

  const HouseCreationWarningBottomSheet({super.key, required this.onConfirm});

  @override
  Widget build(BuildContext context) {
    return BlurredBottomSheet(
      backgroundColor: AppColors.background,
      radius: 20.r,
      padding: EdgeInsets.all(AppSizes.defaultPadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 핸들바
          Center(
            child: Container(
              width: 40.w,
              height: 4.h,
              decoration: BoxDecoration(
                color: AppColors.gray200,
                borderRadius: BorderRadius.circular(2.r),
              ),
            ),
          ),
          SizedBox(height: 24.h),
          // 타이틀
          Text(
            '하우스 생성 전 확인해주세요.',
            style: Theme.of(
              context,
            ).textTheme.sectionHeadline1.copyWith(color: AppColors.gray500),
          ),
          SizedBox(height: 16.h),
          // 경고 항목 1
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('🤬', style: TextStyle(fontSize: 20.sp)),
              SizedBox(width: 8.w),
              Expanded(
                child: Text(
                  '주제에 맞지 않는 글, 욕설은 안돼요.',
                  style: context.textStyles.body3.copyWith(
                    color: AppColors.gray500,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          // 경고 항목 2
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('😭', style: TextStyle(fontSize: 20.sp)),
              SizedBox(width: 8.w),
              Expanded(
                child: Text(
                  '부적절한 콘텐츠/홍보글은 삭제돼요.',
                  style: context.textStyles.body3.copyWith(
                    color: AppColors.gray500,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          // 하단 안내 문구
          Text(
            '도토리 이용약관에 따라 이용규칙 위반으로 판단하여 삭제될 수 있으며 이용이 제한될 수 있습니다.',
            style: context.textStyles.caption1.copyWith(
              color: AppColors.gray300,
            ),
          ),
          SizedBox(height: 24.h),
          // 확인 버튼
          CustomElevatedButton.primary(
            text: '확인했어요',
            width: double.infinity,
            height: 56.h,
            onPressed: onConfirm,
            textStyle: context.textStyles.btnText.copyWith(
              color: AppColors.background,
            ),
          ),
        ],
      ),
    );
  }

  /// 바텀시트 표시 헬퍼 메서드
  static Future<void> show(
    BuildContext context, {
    required VoidCallback onConfirm,
  }) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) =>
          HouseCreationWarningBottomSheet(onConfirm: onConfirm),
    );
  }
}
