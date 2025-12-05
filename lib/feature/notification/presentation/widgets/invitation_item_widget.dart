import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/core/widgets/buttons/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InvitationItemWidget extends StatelessWidget {
  final String title;
  final Color titleColor;
  final String description;
  final String time;
  final VoidCallback onAccept;
  final VoidCallback onDecline;

  const InvitationItemWidget({
    super.key,
    required this.title,
    required this.titleColor,
    required this.description,
    required this.time,
    required this.onAccept,
    required this.onDecline,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.gray100)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Profile Image Placeholder
          Container(
            width: 56.r,
            height: 56.r,
            decoration: const BoxDecoration(
              color: AppColors.gray200,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: context.textStyles.label1.copyWith(
                        color: titleColor,
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/icons/dot.svg',
                      width: 24.r,
                      height: 24.r,
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                SizedBox(
                  width: 285.w,
                  child: Text(
                    description,
                    style: context.textStyles.body3.copyWith(
                      color: AppColors.gray500,
                    ),
                  ),
                ),
                SizedBox(height: 18.h),
                Row(
                  children: [
                    CustomElevatedButton.primary(
                      text: '수락',
                      onPressed: onAccept,
                      width: 89.w,
                      height: 32.h,
                      radius: 6.r,
                      padding: EdgeInsets.zero,
                      textStyle: context.textStyles.body3.copyWith(
                        color: Colors.white,
                        fontSize: 14.sp,
                      ),
                    ),
                    SizedBox(width: 12.w),
                    SizedBox(
                      width: 89.w,
                      height: 32.h,
                      child: OutlinedButton(
                        onPressed: onDecline,
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: AppColors.gray200),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.r),
                          ),
                          padding: EdgeInsets.zero,
                          backgroundColor: AppColors.background,
                        ),
                        child: Text(
                          '거절',
                          style: context.textStyles.btnText.copyWith(
                            color: AppColors.gray400,
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      time,
                      style: context.textStyles.caption1.copyWith(
                        color: AppColors.gray200,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
