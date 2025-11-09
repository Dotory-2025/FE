import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/paths/icon_path.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum CustomModalListTileType { black, gray, red }

extension CustomListTileColor on CustomModalListTileType {
  Color get color => switch (this) {
    CustomModalListTileType.black => AppColors.gray500,
    CustomModalListTileType.gray => AppColors.gray200,
    CustomModalListTileType.red => AppColors.error,
  };
}

class CustomModalListTile extends StatelessWidget {
  final CustomModalListTileType type;
  final String title;
  final VoidCallback onPressed;

  const CustomModalListTile({
    super.key,
    required this.type,
    required this.title,
    required this.onPressed,
  });

  factory CustomModalListTile.black({
    required String title,
    required VoidCallback onPressed,
  }) => CustomModalListTile(
    type: CustomModalListTileType.black,
    title: title,
    onPressed: onPressed,
  );

  factory CustomModalListTile.gray({
    required String title,
    required VoidCallback onPressed,
  }) => CustomModalListTile(
    type: CustomModalListTileType.gray,
    title: title,
    onPressed: onPressed,
  );

  factory CustomModalListTile.red({
    required String title,
    required VoidCallback onPressed,
  }) => CustomModalListTile(
    type: CustomModalListTileType.red,
    title: title,
    onPressed: onPressed,
  );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
        child: Row(
          children: [
            Text(
              title,
              style: context.textStyles.subHeadline2.copyWith(
                color: type.color,
              ),
            ),
            Spacer(),
            SvgPicture.asset(IconPath.go, width: 28.r, height: 28.r),
          ],
        ),
      ),
    );
  }
}
