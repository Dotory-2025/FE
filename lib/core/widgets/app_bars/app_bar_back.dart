import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/core/widgets/search_bars/custom_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../constants/paths/icon_path.dart';

enum BackAppBarType {
  back,
  backWithProfile,
  backWithProfiles,
  backWithSearchBar,
  backWithTextButton,
  backWithTextButtonGray,
  backWithDotButton,
}

class AppBarBack extends StatelessWidget implements PreferredSizeWidget {
  final BackAppBarType type;
  final VoidCallback? onActionPressed;
  final String? title;
  final String? buttonText;
  final TextEditingController? textEditingController;

  const AppBarBack({
    super.key,
    required this.type,
    this.onActionPressed,
    this.title,
    this.buttonText,
    this.textEditingController,
  });

  factory AppBarBack.back() => AppBarBack(type: BackAppBarType.back);

  factory AppBarBack.backWithProfile({
    required String title,
    required VoidCallback onActionPressed,
  }) => AppBarBack(
    type: BackAppBarType.backWithProfile,
    title: title,
    onActionPressed: onActionPressed,
  );

  factory AppBarBack.backWithProfiles({
    required String title,
    required VoidCallback onActionPressed,
  }) => AppBarBack(
    type: BackAppBarType.backWithProfiles,
    title: title,
    onActionPressed: onActionPressed,
  );

  factory AppBarBack.backWithSearchBar({
    required TextEditingController textEditingController,
  }) => AppBarBack(
    type: BackAppBarType.backWithSearchBar,
    textEditingController: textEditingController,
  );

  factory AppBarBack.backWithTextButton({
    required String buttonText,
    required VoidCallback onActionPressed,
  }) => AppBarBack(
    type: BackAppBarType.backWithTextButton,
    buttonText: buttonText,
    onActionPressed: onActionPressed,
  );

  factory AppBarBack.backWithTextButtonGray({
    required String buttonText,
    required VoidCallback? onActionPressed,
  }) =>
      AppBarBack(
        type: BackAppBarType.backWithTextButtonGray,
        buttonText: buttonText,
        onActionPressed: onActionPressed,
      );

  factory AppBarBack.backWithDotButton({
    required VoidCallback onActionPressed,
  }) => AppBarBack(
    type: BackAppBarType.backWithDotButton,
    onActionPressed: onActionPressed,
  );

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      titleSpacing:
          type == BackAppBarType.backWithProfile &&
              type == BackAppBarType.backWithProfiles
          ? -2.w
          : 0.w,
      leading: Row(
        children: [
          SizedBox(width: AppSizes.defaultPadding),
          IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: () {
              context.pop();
            },
            icon: SvgPicture.asset(
              IconPath.backAppBar,
              width: 24.r,
              height: 24.r,
            ),
          ),
        ],
      ),
      title: switch (type) {
        BackAppBarType.back => SizedBox.shrink(),
        BackAppBarType.backWithProfile => Row(
          children: [
            CircleAvatar(
              radius: 16.r,
              backgroundColor: AppColors.background,
              child: CircleAvatar(backgroundColor: AppColors.gray200),
            ),
            SizedBox(width: 6.w),
            Expanded(
              child: Text(
                title!,
                style: context.textStyles.btnText.copyWith(
                  color: AppColors.gray500,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(width: 24.w),
          ],
        ),
        BackAppBarType.backWithProfiles => Row(
          children: [
            SizedBox(
              width: 41.r,
              height: 36.r,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child: CircleAvatar(
                      radius: 16.r,
                      backgroundColor: AppColors.gray200,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 18.r,
                      backgroundColor: AppColors.background,
                      child: CircleAvatar(
                        radius: 16.r,
                        backgroundColor: AppColors.gray200,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 6.w),
            Expanded(
              child: Text(
                title!,
                style: context.textStyles.btnText.copyWith(
                  color: AppColors.gray500,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(width: 24.w),
          ],
        ),
        BackAppBarType.backWithSearchBar => Row(
          children: [
            Expanded(
              child: CustomSearchBar(controller: textEditingController!),
            ),
          ],
        ),
        BackAppBarType.backWithTextButton => SizedBox.shrink(),
        BackAppBarType.backWithTextButtonGray => SizedBox.shrink(),
        BackAppBarType.backWithDotButton => SizedBox.shrink(),
      },
      actions: [
        switch (type) {
          BackAppBarType.back => SizedBox.shrink(),
          BackAppBarType.backWithProfile => IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: onActionPressed,
            icon: SvgPicture.asset(
              IconPath.dotsAppBar,
              width: 24.r,
              height: 24.r,
            ),
          ),
          BackAppBarType.backWithProfiles => IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: onActionPressed,
            icon: SvgPicture.asset(
              IconPath.dotsAppBar,
              width: 24.r,
              height: 24.r,
            ),
          ),
          BackAppBarType.backWithSearchBar => SizedBox.shrink(),
          BackAppBarType.backWithTextButton => TextButton(
            onPressed: onActionPressed,
            child: Text(
              buttonText!,
              style: context.textStyles.btnText.copyWith(
                color: AppColors.gray200,
              ),
            ),
          ),
          BackAppBarType.backWithTextButtonGray => TextButton(
            onPressed: onActionPressed,
            style: TextButton.styleFrom(
              foregroundColor: AppColors.gray500,
              disabledForegroundColor: AppColors.gray200,
            ),
            child: Text(buttonText!, style: context.textStyles.btnText,),
          ),
          BackAppBarType.backWithDotButton => IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: onActionPressed,
            icon: SvgPicture.asset(
              IconPath.dotsAppBar,
              width: 24.r,
              height: 24.r,
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
