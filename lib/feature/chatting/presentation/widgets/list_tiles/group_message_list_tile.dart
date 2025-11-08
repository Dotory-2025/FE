import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/constants/enums/dormitory.dart';
import 'package:dotori/core/constants/paths/route_path.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/core/utils/custom_cache_manager.dart';
import 'package:dotori/feature/chatting/data/models/group_message_response.dart';
import 'package:dotori/feature/chatting/presentation/viewmodels/chatting_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GroupMessageListTile extends ConsumerWidget {
  final GroupMessageResponse groupMessageResponse;

  const GroupMessageListTile({super.key, required this.groupMessageResponse});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final DormitoryCategory category = DomitoryExtension.fromName(
      groupMessageResponse.dormitory,
    );

    return InkWell(
      onTap: () async {
        context.push(
          '${RoutePath.groupMessage}/${groupMessageResponse.id}',
          extra: {
            'roomName': groupMessageResponse.groupName,
            'profileImage1': groupMessageResponse.profileImage1,
            'profileImage2': groupMessageResponse.profileImage2,
          },
        );
        await ref.read(chattingViewModelProvider.notifier).markAsGroupRead(groupMessageResponse.id);
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.defaultPadding,
          vertical: 14.h,
        ),
        child: Row(
          children: [
            SizedBox(
              width: 38.r,
              height: 38.r,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child: CircleAvatar(
                      radius: 16.r,
                      backgroundColor: AppColors.background,
                      child: CircleAvatar(
                        radius: 14.r,
                        backgroundColor: AppColors.background,
                        backgroundImage: CachedNetworkImageProvider(
                          groupMessageResponse.profileImage2,
                          cacheManager: CustomCacheManager(),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 16.r,
                      backgroundColor: AppColors.background,
                      child: CircleAvatar(
                        radius: 14.r,
                        backgroundColor: AppColors.background,
                        backgroundImage: CachedNetworkImageProvider(
                          groupMessageResponse.profileImage1,
                          cacheManager: CustomCacheManager(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 8.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '${category.title}학사 ${groupMessageResponse.semester}',
                        style: context.textStyles.label1.copyWith(
                          color: category.primaryColor,
                        ),
                      ),
                      Spacer(),
                      Text(
                        '${groupMessageResponse.headCount}명',
                        style: context.textStyles.label1.copyWith(
                          color: AppColors.gray400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 2.h),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          groupMessageResponse.groupName,
                          style: context.textStyles.sectionHeadline1.copyWith(
                            color: AppColors.gray500,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                      SizedBox(width: 22.w),
                      Visibility(
                        visible: groupMessageResponse.isRead ? false : true,
                        maintainSize: true,
                        maintainAnimation: true,
                        maintainState: true,
                        child: CircleAvatar(
                          radius: 4.r,
                          backgroundColor: AppColors.gray500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4.h),
                  Wrap(
                    alignment: WrapAlignment.start,
                    spacing: 4.w,
                    children: groupMessageResponse.tags.map((tag) {
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
          ],
        ),
      ),
    );
  }
}
