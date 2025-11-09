import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/constants/enums/dormitory.dart';
import 'package:dotori/core/constants/enums/ui_status.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/core/utils/custom_cache_manager.dart';
import 'package:dotori/core/widgets/app_bars/app_bar_back.dart';
import 'package:dotori/core/widgets/error_retry_widget.dart';
import 'package:dotori/feature/setting/data/models/my_feedbacks_detail_response.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/my_feedbacks_detail_view_model.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/states/my_feedbacks_detail_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyFeedbacksDetailScreen extends HookConsumerWidget {
  final int id;

  const MyFeedbacksDetailScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      Future.microtask(() {
        ref
            .read(myFeedbacksDetailViewModelProvider.notifier)
            .getMyFeedbacksDetail(id);
      });
      return null;
    }, const []);

    final MyFeedbacksDetailState myFeedbacksDetailState = ref.watch(
      myFeedbacksDetailViewModelProvider,
    );

    if (myFeedbacksDetailState.status == UiStatus.loading ||
        myFeedbacksDetailState.status == UiStatus.idle) {
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

    if (myFeedbacksDetailState.status == UiStatus.error) {
      return Scaffold(
        appBar: AppBarBack.back(),
        body: ErrorRetryWidget(
          onPressed: () {
            ref
                .read(myFeedbacksDetailViewModelProvider.notifier)
                .getMyFeedbacksDetail(id);
          },
        ),
      );
    }

    MyFeedbacksDetailResponse? myFeedbacksDetail =
        myFeedbacksDetailState.myFeedbackDetail;

    DormitoryCategory dormitoryCategory = DomitoryExtension.fromName(
      myFeedbacksDetail!.dormitory,
    );

    return Scaffold(
      appBar: AppBarBack.back(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.defaultPadding,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${dormitoryCategory.title}학사',
                      style: context.textStyles.body3.copyWith(
                        color: dormitoryCategory.primaryColor,
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Text(
                      myFeedbacksDetail.roomName,
                      style: context.textStyles.sectionHeadline1.copyWith(
                        color: AppColors.gray500,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                myFeedbacksDetail.nickName,
                                style: context.textStyles.btnText.copyWith(
                                  color: AppColors.gray500,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Wrap(
                                alignment: WrapAlignment.start,
                                spacing: 4.w,
                                children: myFeedbacksDetail.tags.map((tag) {
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
                        SizedBox(width: 12.w),
                        CircleAvatar(
                          radius: 41.r,
                          backgroundColor: AppColors.background,
                          backgroundImage: CachedNetworkImageProvider(
                            myFeedbacksDetail.profileImage,
                            cacheManager: CustomCacheManager(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(color: AppColors.gray100, height: 2.h, thickness: 2.h),
              SizedBox(height: 24.h),
              ListView.builder(
                itemCount: myFeedbacksDetail.feedbacks.length,
                shrinkWrap: true,
                primary: false,
                itemBuilder: (BuildContext context, int index) {
                  final String feedback = myFeedbacksDetail.feedbacks[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSizes.defaultPadding,
                          vertical: 12.h,
                        ),
                        child: Text(
                          feedback,
                          style: context.textStyles.body3.copyWith(
                            color: AppColors.gray400,
                          ),
                        ),
                      ),
                      Divider(
                        color: AppColors.gray100,
                        height: 2.h,
                        thickness: 2.h,
                      ),
                    ],
                  );
                },
              ),
              SizedBox(height: 16.h,),
            ],
          ),
        ),
      ),
    );
  }
}
