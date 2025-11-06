import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/constants/paths/icon_path.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/feature/setting/data/models/feedback_history_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FeedbackHistoryListTile extends StatelessWidget {
  final FeedbackHistoryResponse feedbackHistoryResponse;

  const FeedbackHistoryListTile({
    super.key,
    required this.feedbackHistoryResponse,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.defaultPadding,
            vertical: 6.h,
          ),
          child: Row(
            children: [
              Text(
                feedbackHistoryResponse.category,
                style: context.textStyles.body3.copyWith(
                  color: AppColors.gray400,
                ),
              ),
              Spacer(),
              SvgPicture.asset(IconPath.people, width: 24.r, height: 24.r),
              SizedBox(width: 4.w),
              Text(
                feedbackHistoryResponse.count.toString(),
                style: context.textStyles.sectionHeadline1.copyWith(
                  color: AppColors.gray400,
                ),
              ),
            ],
          ),
        ),
        Divider(color: AppColors.gray100, height: 2.h, thickness: 2.h),
      ],
    );
  }
}
