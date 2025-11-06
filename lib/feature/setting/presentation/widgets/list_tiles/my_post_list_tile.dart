import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/constants/enums/dormitory.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/feature/setting/data/models/my_posts_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyPostListTile extends StatelessWidget {
  final MyPostsResponse myPostsResponse;

  const MyPostListTile({super.key, required this.myPostsResponse});

  @override
  Widget build(BuildContext context) {
    final DormitoryCategory category = DomitoryExtension.fromName(
      myPostsResponse.dormitory,
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
                '${category.title}학사 ${myPostsResponse.semester}',
                style: context.textStyles.label1.copyWith(
                  color: myPostsResponse.isRecruiting
                      ? category.primaryColor
                      : AppColors.gray200,
                ),
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      myPostsResponse.title,
                      style: context.textStyles.subHeadline2.copyWith(
                        color: myPostsResponse.isRecruiting
                            ? AppColors.gray500
                            : AppColors.gray400,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(width: 14.h),
                  if (myPostsResponse.isRecruiting)
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 6.w,
                        vertical: 4.h,
                      ),
                      decoration: BoxDecoration(
                        color: category.thirdColor,
                        borderRadius: BorderRadius.circular(AppSizes.radiusSM),
                      ),
                      child: Text(
                        '모집중',
                        style: context.textStyles.label1.copyWith(
                          color: category.primaryColor,
                        ),
                      ),
                    ),
                ],
              ),
              SizedBox(height: 8.h),
              Wrap(
                alignment: WrapAlignment.start,
                spacing: 4.w,
                children: myPostsResponse.tags.map((tag) {
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
