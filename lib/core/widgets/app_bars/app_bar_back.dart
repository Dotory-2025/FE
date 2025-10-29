import 'package:dotori/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../constants/icon_path.dart';

enum BackAppBarType {
  back,
  backWithProfile,
  backWithProfiles,
  backWithSearchBar,
  backWithTextButton,
  backWithDotButton,
}

class AppBarBack extends StatelessWidget {
  final BackAppBarType type;
  final VoidCallback? onActionPressed;
  final String? title;
  final String? buttonText;

  const AppBarBack({
    super.key,
    required this.type,
    this.onActionPressed,
    this.title,
    this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      leading: Row(children: [SizedBox(width: AppSizes.defaultPadding,), IconButton(
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
        onPressed: () {
          context.pop();
        },
        icon: SvgPicture.asset(
          IconPath.backAppBar,
          width: 24.r, height: 24.r,
        ),
      ),],),
    );
  }
}
