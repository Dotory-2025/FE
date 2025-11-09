import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/core/utils/custom_cache_manager.dart';
import 'package:dotori/core/widgets/buttons/custom_elevated_button.dart';
import 'package:dotori/feature/setting/data/models/block_users_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BlockUserListTile extends StatelessWidget {
  final BlockUsersResponse blockUsersResponse;

  const BlockUserListTile({super.key, required this.blockUsersResponse});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.defaultPadding,
        vertical: 12.h,
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 28.r,
            backgroundColor: AppColors.background,
            backgroundImage: CachedNetworkImageProvider(
              blockUsersResponse.profileImage,
              cacheManager: CustomCacheManager(),
            ),
          ),
          SizedBox(width: 6.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                blockUsersResponse.nickName,
                style: context.textStyles.btnText.copyWith(
                  color: AppColors.gray500,
                ),
              ),
              Text(
                '${blockUsersResponse.studentNumber} 학번',
                style: context.textStyles.body3.copyWith(
                  color: AppColors.gray300,
                ),
              ),
            ],
          ),
          Spacer(),
          CustomElevatedButton.primary(
            text: '차단 해제',
            onPressed: () {},
            padding: EdgeInsets.symmetric(
              horizontal: AppSizes.defaultPadding,
              vertical: 4.h,
            ),
            textStyle: context.textStyles.label1.copyWith(
              color: AppColors.background,
            ),
            radius: AppSizes.radiusSM,
          ),
        ],
      ),
    );
  }
}
