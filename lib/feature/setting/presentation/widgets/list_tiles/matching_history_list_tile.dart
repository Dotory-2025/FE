import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/constants/enums/dormitory.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/feature/setting/data/models/matching_history_response.dart';
import 'package:dotori/feature/setting/data/models/my_posts_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MatchingHistoryListTile extends StatelessWidget {
  final MatchingHistoryResponse matchingHistoryResponse;

  const MatchingHistoryListTile({
    super.key,
    required this.matchingHistoryResponse,
  });

  @override
  Widget build(BuildContext context) {
    final DormitoryCategory category = DomitoryExtension.fromName(
      matchingHistoryResponse.dormitory,
    );
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.defaultPadding,
            vertical: 20.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${category.title}학사 ${matchingHistoryResponse.semester}',
                style: context.textStyles.label1.copyWith(
                  color: category.primaryColor,
                ),
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      matchingHistoryResponse.title,
                      style: context.textStyles.subHeadline2.copyWith(
                        color: AppColors.gray500,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(width: 14.h),
                ],
              ),
              SizedBox(height: 8.h),
              Wrap(
                alignment: WrapAlignment.start,
                spacing: 4.w,
                children: matchingHistoryResponse.tags.map((tag) {
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
        Divider(color: AppColors.gray100, height: 2.h, thickness: 2.h),
      ],
    );
  }
}
