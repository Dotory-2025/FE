import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/icon_path.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomDropdownButton extends StatelessWidget {
  final String title;
  final Color textColor;
  final VoidCallback onPressed;

  const CustomDropdownButton({
    super.key,
    required this.title,
    required this.textColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(width: 4.w),
              Text(
                title,
                style: context.textStyles.subHeadline2.copyWith(
                  color: textColor,
                ),
              ),
              Spacer(),
              SvgPicture.asset(IconPath.dropdown, width: 24.r, height: 24.r),
              SizedBox(width: 8.w),
            ],
          ),
          SizedBox(height: 6.h,),
          Divider(color: AppColors.gray200, radius: BorderRadius.circular(4.r), height: 2.h, thickness: 2.h,),
        ],
      ),
    );
  }
}
