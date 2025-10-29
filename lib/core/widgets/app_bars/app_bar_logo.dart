import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/constants/icon_path.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

enum LogoAppBarType { logo, logoWithPlusButton, logoWithTextButton }

class AppBarLogo extends StatelessWidget implements PreferredSizeWidget {
  final LogoAppBarType type;
  final VoidCallback? onActionPressed;
  final String? buttonText;

  const AppBarLogo({
    super.key,
    required this.type,
    this.onActionPressed,
    this.buttonText,
  });

  factory AppBarLogo.logo() => AppBarLogo(type: LogoAppBarType.logo);

  factory AppBarLogo.logoWithPlusButton({
    required VoidCallback onActionPressed,
  }) => AppBarLogo(
    type: LogoAppBarType.logoWithPlusButton,
    onActionPressed: onActionPressed,
  );

  factory AppBarLogo.logoWithTextButton({
    required VoidCallback onActionPressed,
    required String buttonText,
  }) => AppBarLogo(
    type: LogoAppBarType.logoWithTextButton,
    onActionPressed: onActionPressed,
    buttonText: buttonText,
  );

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      titleSpacing: 16.w,
      title: Container(
        width: 72.w,
        height: 32.h,
        color: AppColors.gray200,

        /// --- 🧱 로고 영역
      ),
      actions: [
        switch (type) {
          LogoAppBarType.logo => SizedBox.shrink(),
          LogoAppBarType.logoWithPlusButton => IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: onActionPressed,
            icon: SvgPicture.asset(IconPath.plusAppBar, width: 24.r, height: 24.r,),
          ),
          LogoAppBarType.logoWithTextButton => TextButton(
            onPressed: onActionPressed,
            child: Text(
              buttonText!,
              style: context.textStyles.btnText.copyWith(
                color: AppColors.gray200,
              ),
            ),
          ),
        },
        SizedBox(width: AppSizes.defaultPadding),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight.h);
}
