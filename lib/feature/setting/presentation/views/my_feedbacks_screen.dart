import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/constants/enums/dormitory.dart';
import 'package:dotori/core/constants/enums/ui_status.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/core/widgets/app_bars/app_bar_back.dart';
import 'package:dotori/core/widgets/error_retry_widget.dart';
import 'package:dotori/feature/setting/data/models/my_feedbacks_response.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/my_feedbacks_view_model.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/states/my_feedbacks_state.dart';
import 'package:dotori/feature/setting/presentation/widgets/list_tiles/feedback_user_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyFeedbacksScreen extends HookConsumerWidget {
  const MyFeedbacksScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      Future.microtask(() {
        ref.read(myFeedbacksViewModelProvider.notifier).getMyFeedbacks();
      });
      return null;
    }, const []);

    final MyFeedbacksState myFeedbacksState = ref.watch(
      myFeedbacksViewModelProvider,
    );

    if (myFeedbacksState.status == UiStatus.loading) {
      return Scaffold(
        appBar: AppBarBack.back(),
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

    if (myFeedbacksState.status == UiStatus.error) {
      return Scaffold(
        appBar: AppBarBack.back(),
        body: ErrorRetryWidget(
          onPressed: () {
            ref.read(myFeedbacksViewModelProvider.notifier).getMyFeedbacks();
          },
        ),
      );
    }

    List<MyFeedbacksResponse> myFeedBacks = myFeedbacksState.myFeedbacks;

    return Scaffold(
      appBar: AppBarBack.back(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultPadding),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 24.h),
                ListView.separated(
                  itemCount: myFeedBacks.length,
                  shrinkWrap: true,
                  primary: false,
                  itemBuilder: (BuildContext context, int index) {
                    final MyFeedbacksResponse myFeedBack = myFeedBacks[index];
                    final DormitoryCategory category =
                        DomitoryExtension.fromName(myFeedBack.dormitory);
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          myFeedBack.year,
                          style: context.textStyles.body3.copyWith(
                            color: category.primaryColor,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        ListView.separated(
                          itemCount: myFeedBack.feedbacks.length,
                          shrinkWrap: true,
                          primary: false,
                          itemBuilder: (BuildContext context, int index) {
                            final FeedbackUser feedbackUser =
                                myFeedBack.feedbacks[index];
                            return FeedbackUserListTile(
                              feedbackUser: feedbackUser,
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(height: 14.h);
                          },
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(height: 24.h);
                  },
                ),
                SizedBox(height: 16.h,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
