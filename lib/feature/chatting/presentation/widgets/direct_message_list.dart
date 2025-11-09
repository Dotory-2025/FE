import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/constants/enums/dormitory.dart';
import 'package:dotori/core/constants/paths/route_path.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/core/utils/custom_cache_manager.dart';
import 'package:dotori/core/widgets/buttons/custom_elevated_button.dart';
import 'package:dotori/feature/chatting/data/models/direct_message_detail_response.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/setting_view_model.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/states/setting_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DirectMessageList extends StatelessWidget {
  final DirectMessageDetailResponse directMessages;

  const DirectMessageList({super.key, required this.directMessages});

  @override
  Widget build(BuildContext context) {
    final List<DirectChatMessage> chats = directMessages.messages;
    DormitoryCategory dormitoryCategory = DomitoryExtension.fromName(
      directMessages.dormitory,
    );
    return ListView.separated(
      itemCount: chats.length,
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, index) {
        final DirectChatMessage msg = chats[index];

        return _TextBubble(
          message: msg,
          opponentName: directMessages.nickName,
          profileImage: directMessages.profileImage,
          timeStamp: msg.timeStamp,
          category: dormitoryCategory,
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(height: 20.h);
      },
    );
  }
}

class _TextBubble extends ConsumerWidget {
  final DirectChatMessage message;
  final String opponentName;
  final String profileImage;
  final String timeStamp;
  final DormitoryCategory category;

  const _TextBubble({
    required this.message,
    required this.opponentName,
    required this.profileImage,
    required this.timeStamp,
    required this.category,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isMine = message.senderType == SenderType.me;

    return Align(
      alignment: isMine ? Alignment.centerRight : Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: isMine
            ? CrossAxisAlignment.end
            : CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: isMine ? 0 : 32.r + 8.w),
            child: Text(
              isMine ? '나' : opponentName,
              style: context.textStyles.label1.copyWith(
                color: isMine ? AppColors.gray300 : AppColors.gray400,
              ),
            ),
          ),
          SizedBox(height: 4.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: isMine
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            children: [
              if (!isMine) ...[
                CircleAvatar(
                  radius: 16.r,
                  backgroundColor: AppColors.background,
                  backgroundImage: CachedNetworkImageProvider(
                    profileImage,
                    cacheManager: CustomCacheManager(),
                  ),
                ),
                SizedBox(width: 8.w),
              ],

              /// ✅ 타입별 말풍선 콘텐츠
              Column(
                crossAxisAlignment: isMine
                    ? CrossAxisAlignment.end
                    : CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      if (isMine) ...[
                        _buildTime(context, isMine),
                        SizedBox(width: 4.w),
                      ],
                      _buildMessageContent(context, isMine, ref),
                      if (!isMine) ...[
                        SizedBox(width: 4.w),
                        _buildTime(context, isMine),
                      ],
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// 🧱 타입별 콘텐츠 빌더
  Widget _buildMessageContent(
    BuildContext context,
    bool isMine,
    WidgetRef ref,
  ) {
    final SettingState settingState = ref.watch(settingViewModelProvider);
    switch (message.type) {
      case MessageType.text:
        return ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 266.w),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
            decoration: BoxDecoration(
              color: isMine ? AppColors.gray500 : AppColors.background,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(isMine ? AppSizes.radiusMD : 4.r),
                topRight: Radius.circular(isMine ? 4.r : AppSizes.radiusMD),
                bottomLeft: Radius.circular(AppSizes.radiusMD),
                bottomRight: Radius.circular(AppSizes.radiusMD),
              ),
            ),
            child: Text(
              message.content!,
              style: context.textStyles.body3.copyWith(
                color: isMine ? AppColors.background : AppColors.gray500,
              ),
            ),
          ),
        );

      case MessageType.image:
        final String imageUrl = message.imageUrl!;
        return InkWell(
          onTap: () {
            context.push(
              RoutePath.imageDetail,
              extra: {
                'nickname': isMine
                    ? settingState.myInfo!.nickName
                    : opponentName,
                'timeStamp': timeStamp,
                'profileImage': isMine
                    ? settingState.myInfo!.profileImage
                    : profileImage,
                'imageUrl': imageUrl,
              },
            );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppSizes.radiusMD),
            child: SizedBox(
              height: 124.r,
              width: 124.r,
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                cacheManager: CustomCacheManager(),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );

      case MessageType.houseInvite:
        return ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 266.w),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(isMine ? AppSizes.radiusMD : 4.r),
                topRight: Radius.circular(isMine ? 4.r : AppSizes.radiusMD),
                bottomLeft: Radius.circular(AppSizes.radiusMD),
                bottomRight: Radius.circular(AppSizes.radiusMD),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  /// --- 내 카테고리로 바꾸기
                  '${category.title}학사',
                  style: context.textStyles.label1.copyWith(
                    color: category.primaryColor,
                  ),
                ),
                SizedBox(height: 6.h),
                Text(
                  '${message.houseName} 하우스에 초대했습니다.',
                  style: context.textStyles.body3.copyWith(
                    color: AppColors.background,
                  ),
                ),
              ],
            ),
          ),
        );

      case MessageType.houseInviteReceived:
        return ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 266.w),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
            decoration: BoxDecoration(
              color: AppColors.background,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(isMine ? AppSizes.radiusMD : 4.r),
                topRight: Radius.circular(isMine ? 4.r : AppSizes.radiusMD),
                bottomLeft: Radius.circular(AppSizes.radiusMD),
                bottomRight: Radius.circular(AppSizes.radiusMD),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${category.title}학사',
                  style: context.textStyles.label1.copyWith(
                    color: category.primaryColor,
                  ),
                ),
                SizedBox(height: 6.h),
                Text(
                  '$opponentName 님이 ${message.houseName} 하우스에 초대했습니다.',
                  style: context.textStyles.body3.copyWith(
                    color: AppColors.gray500,
                  ),
                ),
                SizedBox(height: 18.h),
                Row(
                  children: [
                    CustomElevatedButton(
                      text: '수락',
                      onPressed: () {},
                      textStyle: context.textStyles.body3.copyWith(
                        color: AppColors.background,
                      ),
                      radius: AppSizes.radiusSM,
                      padding: EdgeInsets.symmetric(
                        horizontal: 32.w,
                        vertical: 4.h,
                      ),
                    ),
                    SizedBox(width: 12.w),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        padding: EdgeInsets.symmetric(
                          horizontal: 32.w,
                          vertical: 4.h,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            AppSizes.radiusSM,
                          ),
                          side: BorderSide(
                            color: AppColors.gray200,
                            width: 1.5.r,
                          ),
                        ),
                        elevation: 0,
                      ),
                      child: Text(
                        '거절',
                        style: context.textStyles.body3.copyWith(
                          color: AppColors.gray400,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
    }
  }

  /// 🕒 시간 표시 공통 위젯
  Widget _buildTime(BuildContext context, bool isMine) {
    return Padding(
      padding: EdgeInsets.only(bottom: 2.h),
      child: Column(
        crossAxisAlignment: isMine
            ? CrossAxisAlignment.end
            : CrossAxisAlignment.start,
        children: [
          Text(
            '1',
            style: context.textStyles.timeText.copyWith(
              color: AppColors.gray300,
              height: 1,
            ),
          ),
          Text(
            _formatTime(timeStamp),
            style: context.textStyles.caption1.copyWith(
              color: AppColors.gray300,
            ),
          ),
        ],
      ),
    );
  }

  String _formatTime(String timeStamp) {
    try {
      final dt = DateTime.parse(timeStamp).toLocal();
      return '${dt.hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')}';
    } catch (_) {
      return '';
    }
  }
}
