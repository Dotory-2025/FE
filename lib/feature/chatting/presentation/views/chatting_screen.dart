import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/constants/enums/ui_status.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/core/widgets/app_bars/app_bar_logo.dart';
import 'package:dotori/core/widgets/buttons/search_bar_button.dart';
import 'package:dotori/core/widgets/error_retry_widget.dart';
import 'package:dotori/feature/chatting/data/models/direct_message_response.dart';
import 'package:dotori/feature/chatting/data/models/group_message_response.dart';
import 'package:dotori/feature/chatting/presentation/viewmodels/chatting_view_model.dart';
import 'package:dotori/feature/chatting/presentation/viewmodels/states/chatting_state.dart';
import 'package:dotori/feature/chatting/presentation/widgets/list_tiles/direct_message_list_tile.dart';
import 'package:dotori/feature/chatting/presentation/widgets/list_tiles/group_message_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChattingScreen extends HookConsumerWidget {
  const ChattingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      Future.microtask(() {
        ref.read(chattingViewModelProvider.notifier).getChatRooms();
      });
      return null;
    }, const []);

    final ChattingState chattingState = ref.watch(chattingViewModelProvider);

    if (chattingState.status == UiStatus.loading) {
      return Scaffold(
        appBar: AppBarLogo.logoWithPlusButton(onActionPressed: () {}),
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

    if (chattingState.status == UiStatus.error) {
      return Scaffold(
        appBar: AppBarLogo.logoWithPlusButton(onActionPressed: () {}),
        body: ErrorRetryWidget(
          onPressed: () {
            ref.read(chattingViewModelProvider.notifier).getChatRooms();
          },
        ),
      );
    }

    final List<DirectMessageResponse> directMessages =
        chattingState.directMessages;

    final List<GroupMessageResponse> groupMessages =
        chattingState.groupMessages;

    return Scaffold(
      appBar: AppBarLogo.logoWithPlusButton(onActionPressed: () {}),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.defaultPadding,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SearchBarButton(onPressed: () {}),
                    SizedBox(height: 24.h),
                    Text(
                      '하우스 메세지',
                      style: context.textStyles.subHeadline2.copyWith(
                        color: AppColors.gray500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14.h),
              ListView.builder(
                itemCount: groupMessages.length,
                shrinkWrap: true,
                primary: false,
                itemBuilder: (BuildContext context, int index) {
                  return GroupMessageListTile(
                    groupMessageResponse: groupMessages[index],
                  );
                },
              ),
              Divider(color: AppColors.gray100, height: 2.h, thickness: 2.h),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.defaultPadding,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 24.h),
                    Text(
                      '개인 메세지',
                      style: context.textStyles.subHeadline2.copyWith(
                        color: AppColors.gray500,
                      ),
                    ),
                    SizedBox(height: 8.h),
                  ],
                ),
              ),
              ListView.builder(
                itemCount: directMessages.length,
                shrinkWrap: true,
                primary: false,
                itemBuilder: (BuildContext context, int index) {
                  return DirectMessageListTile(
                    directMessageResponse: directMessages[index],
                  );
                },
              ),
              SizedBox(height: 96.h),
            ],
          ),
        ),
      ),
    );
  }
}
