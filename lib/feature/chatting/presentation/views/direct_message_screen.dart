import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/constants/enums/dormitory.dart';
import 'package:dotori/core/constants/enums/ui_status.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/core/utils/custom_tab_launcher.dart';
import 'package:dotori/core/widgets/app_bars/app_bar_back.dart';
import 'package:dotori/core/widgets/error_retry_widget.dart';
import 'package:dotori/feature/chatting/data/models/direct_message_detail_response.dart';
import 'package:dotori/feature/chatting/presentation/viewmodels/direct_message_view_model.dart';
import 'package:dotori/feature/chatting/presentation/viewmodels/states/direct_message_state.dart';
import 'package:dotori/feature/chatting/presentation/widgets/direct_message_list.dart';
import 'package:dotori/feature/chatting/presentation/widgets/text_fields/chatting_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DirectMessageScreen extends HookConsumerWidget {
  final int id;
  final String nickName;
  final String profileImage;

  const DirectMessageScreen({
    super.key,
    required this.id,
    required this.nickName,
    required this.profileImage,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ScrollController scrollController = useScrollController();
    final textEditingController = useTextEditingController();

    useEffect(() {
      Future.microtask(() {
        ref
            .read(directMessageViewModelProvider.notifier)
            .getDirectMessageDetail(id);
      });
      return null;
    }, const []);

    final DirectMessageState directMessageState = ref.watch(
      directMessageViewModelProvider,
    );

    if (directMessageState.status == UiStatus.loading ||
        directMessageState.status == UiStatus.idle) {
      return Scaffold(
        backgroundColor: AppColors.gray100,
        appBar: AppBarBack.backWithProfile(
          title: nickName,
          profileImage1: profileImage,
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

    if (directMessageState.status == UiStatus.error) {
      return Scaffold(
        appBar: AppBarBack.backWithProfile(
          title: nickName,
          profileImage1: profileImage,
          onActionPressed: () {},
        ),
        body: ErrorRetryWidget(
          onPressed: () {
            ref
                .read(directMessageViewModelProvider.notifier)
                .getDirectMessageDetail(id);
          },
        ),
      );
    }

    final DirectMessageDetailResponse directMessages =
        directMessageState.directMessages!;
    final DormitoryCategory category = DomitoryExtension.fromName(
      directMessages.dormitory,
    );

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.gray100,
      appBar: AppBarBack.backWithProfile(
        title: nickName,
        profileImage1: profileImage,
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
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.defaultPadding,
                  vertical: 12.h,
                ),
                color: AppColors.background,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (directMessages.roomName != null) ...[
                      Text(
                        '${category.title}학사',
                        style: context.textStyles.body3.copyWith(
                          color: category.primaryColor,
                        ),
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        '${directMessages.roomName}',
                        style: context.textStyles.sectionHeadline1.copyWith(
                          color: AppColors.gray500,
                        ),
                      ),
                      SizedBox(height: 6.h),
                      Wrap(
                        alignment: WrapAlignment.start,
                        spacing: 8.w,
                        children: directMessages.tags.map((tag) {
                          return Text(
                            tag,
                            style: context.textStyles.label1.copyWith(
                              color: AppColors.gray200,
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                    if (directMessages.roomName == null) ...[
                      Text(
                        '${category.title}학사 선호',
                        style: context.textStyles.label1.copyWith(
                          color: category.primaryColor,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Wrap(
                        alignment: WrapAlignment.start,
                        spacing: 4.w,
                        children: directMessages.tags.map((tag) {
                          return Text(
                            tag,
                            style: context.textStyles.label1.copyWith(
                              color: AppColors.gray300,
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ],
                ),
              ),
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
                                          style: context.textStyles.caption1.copyWith(
                                            letterSpacing: (12.sp * 0.20 / 100).w,
                                            height: 20 / 12,
                                            color: AppColors.gray300,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'PretendardVariable',
                                          ),
                                        ),
                                        TextSpan(
                                          text: '서비스 이용약관 보기',
                                          style: context.textStyles.caption1.copyWith(
                                            color: AppColors.gray400,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'PretendardVariable',
                                            decoration: TextDecoration.underline,
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
                                DirectMessageList(directMessages: directMessages),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
