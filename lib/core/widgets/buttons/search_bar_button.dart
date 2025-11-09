import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/constants/paths/icon_path.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBarButton extends StatelessWidget {
  final VoidCallback onPressed;

  const SearchBarButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizes.radiusSM),
          color: AppColors.gray100,
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              IconPath.searchSearchBar,
              width: 24.r,
              height: 24.r,
            ),
            SizedBox(width: 4.w),
            Text(
              '검색어를 입력해보세요.',
              style: context.textStyles.body1.copyWith(
                color: AppColors.gray200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
