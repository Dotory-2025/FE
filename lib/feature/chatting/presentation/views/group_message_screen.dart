import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/constants/enums/ui_status.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/core/utils/custom_tab_launcher.dart';
import 'package:dotori/core/widgets/app_bars/app_bar_back.dart';
import 'package:dotori/core/widgets/error_retry_widget.dart';
import 'package:dotori/feature/chatting/data/models/group_message_detail_response.dart';
import 'package:dotori/feature/chatting/presentation/viewmodels/group_message_view_model.dart';
import 'package:dotori/feature/chatting/presentation/viewmodels/states/group_message_state.dart';
import 'package:dotori/feature/chatting/presentation/widgets/group_message_list.dart';
import 'package:dotori/feature/chatting/presentation/widgets/text_fields/chatting_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GroupMessageScreen extends HookConsumerWidget {
  final int id;
  final String roomName;
  final String profileImage1;
  final String profileImage2;

  const GroupMessageScreen({
    super.key,
    required this.id,
    required this.roomName,
    required this.profileImage1,
    required this.profileImage2,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ScrollController scrollController = useScrollController();
    final textEditingController = useTextEditingController();

    useEffect(() {
      Future.microtask(() {
        ref
            .read(groupMessageViewModelProvider.notifier)
            .getGroupMessageDetail(id);
      });
      return null;
    }, const []);

    final GroupMessageState groupMessageState = ref.watch(
      groupMessageViewModelProvider,
    );

    if (groupMessageState.status == UiStatus.loading ||
        groupMessageState.status == UiStatus.idle) {
      return Scaffold(
        backgroundColor: AppColors.gray100,
        appBar: AppBarBack.backWithProfiles(
          title: roomName,
          profileImage1: profileImage1,
          profileImage2: profileImage2,
          onActionPressed: () {},
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 128.r,
                  height: 128.r,
                  color: AppColors.gray200,
                ),
                SizedBox(height: 28.h),
              ],
            ),
          ),
        ),
      );
    }

    if (groupMessageState.status == UiStatus.error) {
      return Scaffold(
        appBar: AppBarBack.backWithProfiles(
          title: roomName,
          profileImage1: profileImage1,
          profileImage2: profileImage2,
          onActionPressed: () {},
        ),
        body: ErrorRetryWidget(
          onPressed: () {
            ref
                .read(groupMessageViewModelProvider.notifier)
                .getGroupMessageDetail(id);
          },
        ),
      );
    }

    final GroupMessageDetailResponse groupMessages =
        groupMessageState.groupMessages!;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.gray100,
      appBar: AppBarBack.backWithProfiles(
        title: roomName,
        profileImage1: profileImage1,
        profileImage2: profileImage2,
        onActionPressed: () {},
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: ListView(
                        shrinkWrap: true,
                        controller: scrollController,
                        reverse: true,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: AppSizes.defaultPadding,
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20.w,
                                    vertical: 14.h,
                                  ),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text:
                                              '누구나 기분 좋게 참여할 수 있는 커뮤니티를 만들기 위해 커뮤니티 이용규칙을 준수해 주세요. 커뮤니티 이용 규칙을 위반할 경우 서비스 이용이 제한될 수 있습니다. ',
                                          style: context.textStyles.caption1
                                              .copyWith(
                                                letterSpacing:
                                                    (12.sp * 0.20 / 100).w,
                                                height: 20 / 12,
                                                color: AppColors.gray300,
                                                fontWeight: FontWeight.w500,
                                                fontFamily:
                                                    'PretendardVariable',
                                              ),
                                        ),
                                        TextSpan(
                                          text: '서비스 이용약관 보기',
                                          style: context.textStyles.caption1
                                              .copyWith(
                                                color: AppColors.gray400,
                                                fontWeight: FontWeight.w600,
                                                fontFamily:
                                                    'PretendardVariable',
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              launchCustomTab(
                                                context,
                                                url: 'https://www.google.com',
                                                title: '서비스 이용약관',
                                              );
                                            },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 12.h),
                                Text(
                                  '사용자와 첫 대화를 시작해보세요.',
                                  style: context.textStyles.body3.copyWith(
                                    color: AppColors.gray300,
                                  ),
                                ),
                                SizedBox(height: 4.h),
                                GroupMessageList(groupMessages: groupMessages),
                                SizedBox(height: 16.h),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    ChattingTextField(
                      textEditingController: textEditingController,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
