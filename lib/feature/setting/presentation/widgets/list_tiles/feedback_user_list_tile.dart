import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/constants/paths/icon_path.dart';
import 'package:dotori/core/constants/paths/route_path.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/core/utils/custom_cache_manager.dart';
import 'package:dotori/feature/setting/data/models/my_feedbacks_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class FeedbackUserListTile extends StatelessWidget {
  final FeedbackUser feedbackUser;

  const FeedbackUserListTile({super.key, required this.feedbackUser});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push('${RoutePath.myFeedbacks}/${feedbackUser.id}');
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 24.h),
        decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.circular(AppSizes.radiusMD),
          boxShadow: [
            BoxShadow(
              color: AppColors.shadow.withValues(alpha: 0.25),
              offset: Offset(0, 4.h),
              blurRadius: 10.r,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25.5.r,
              backgroundColor: AppColors.background,
              backgroundImage: CachedNetworkImageProvider(
                feedbackUser.profileImage,
                cacheManager: CustomCacheManager(),
              ),
            ),
            SizedBox(width: 8.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    feedbackUser.nickName,
                    style: context.textStyles.btnText.copyWith(
                      color: AppColors.gray500,
                    ),
                  ),
                  SizedBox(height: 3.h),
                  Wrap(
                    alignment: WrapAlignment.start,
                    spacing: 4.w,
                    children: feedbackUser.tags.map((tag) {
                      return Text(
                        tag,
                        style: context.textStyles.label1.copyWith(
                          color: AppColors.gray200,
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            SizedBox(width: 26.w),
            SvgPicture.asset(IconPath.go, width: 24.r, height: 24.r),
          ],
        ),
      ),
    );
  }
}
