import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/constants/paths/route_path.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/core/utils/custom_cache_manager.dart';
import 'package:dotori/feature/chatting/data/models/direct_message_response.dart';
import 'package:dotori/feature/chatting/presentation/viewmodels/chatting_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DirectMessageListTile extends ConsumerWidget {
  final DirectMessageResponse directMessageResponse;

  const DirectMessageListTile({super.key, required this.directMessageResponse});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () async {
        context.push(
          '${RoutePath.directMessage}/${directMessageResponse.id}',
          extra: {
            'nickName': directMessageResponse.nickName,
            'profileImage': directMessageResponse.profileImage,
          },
        );
        await ref.read(chattingViewModelProvider.notifier).markAsDmRead(directMessageResponse.id);
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.defaultPadding,
          vertical: 14.h,
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 32.r,
              backgroundColor: AppColors.background,
              backgroundImage: CachedNetworkImageProvider(
                directMessageResponse.profileImage,
                cacheManager: CustomCacheManager(),
              ),
            ),
            SizedBox(width: 8.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    directMessageResponse.nickName,
                    style: context.textStyles.btnText.copyWith(
                      color: AppColors.gray500,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 2.h),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          directMessageResponse.lastMessage,
                          style: context.textStyles.body3.copyWith(
                            color: AppColors.gray400,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(width: 6.w),
                      CircleAvatar(
                        radius: 1.r,
                        backgroundColor: AppColors.gray300,
                      ),
                      SizedBox(width: 6.w),

                      /// --- 🧱 시간 포메팅 로직
                      Text(
                        '10분 전',
                        style: context.textStyles.body3.copyWith(
                          color: AppColors.gray300,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(width: 14.w),
            Visibility(
              visible: directMessageResponse.isRead ? false : true,
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
      ),
    );
  }
}
