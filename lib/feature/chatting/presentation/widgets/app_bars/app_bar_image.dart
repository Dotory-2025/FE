import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/constants/paths/icon_path.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/core/utils/custom_cache_manager.dart';
import 'package:dotori/core/utils/image_utils.dart';
import 'package:dotori/core/widgets/toasts/custom_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class AppBarImage extends StatelessWidget implements PreferredSizeWidget {
  final String nickname;
  final String timeStamp;
  final String profileImage;
  final String imageUrl;

  const AppBarImage({
    required this.nickname,
    required this.timeStamp,
    required this.profileImage,
    required this.imageUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleSpacing: 2.w,
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
              IconPath.closeAppBar,
              width: 24.r,
              height: 24.r,
            ),
          ),
        ],
      ),
      title: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: CachedNetworkImageProvider(
              profileImage,
              cacheManager: CustomCacheManager(),
            ),
          ),
          SizedBox(width: 6.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nickname,
                style: context.textStyles.label1.copyWith(
                  color: AppColors.gray100,
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                timeStamp,
                style: context.textStyles.timeText.copyWith(
                  color: AppColors.gray200,
                ),
              ),
            ],
          ),
        ],
      ),
      actions: [
        IconButton(
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          onPressed: () async {
            final String result = await ImageUtils().saveNetworkImage(imageUrl);

            if (context.mounted) {
              CustomToast.showToast(context, result, 16.h);
            }
          },
          icon: SvgPicture.asset(
            IconPath.saveAppBar,
            width: 24.r,
            height: 24.r,
          ),
        ),
        SizedBox(width: AppSizes.defaultPadding),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight.h);
}
