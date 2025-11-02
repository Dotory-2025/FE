import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/paths/icon_path.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DormitoryListTile extends StatelessWidget {
  final String icon;
  final String title;
  final String description;
  final VoidCallback onPressed;

  const DormitoryListTile({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: EdgeInsets.only(
          left: 24.w,
          right: 20.w,
          top: 10.h,
          bottom: 14.h,
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  description,
                  style: context.textStyles.caption1.copyWith(
                    color: AppColors.gray300,
                  ),
                ),
                SizedBox(height: 4.h),
                Row(
                  children: [
                    SvgPicture.asset(icon, width: 18.r, height: 20.r),
                    SizedBox(width: 6.w),
                    Text(
                      title,
                      style: context.textStyles.subHeadline2.copyWith(
                        color: AppColors.gray500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            SvgPicture.asset(IconPath.go, width: 28.r, height: 28.r),
          ],
        ),
      ),
    );
  }
}
