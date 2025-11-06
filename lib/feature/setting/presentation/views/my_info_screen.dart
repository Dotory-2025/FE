import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/constants/enums/dormitory.dart';
import 'package:dotori/core/constants/enums/ui_status.dart';
import 'package:dotori/core/constants/paths/icon_path.dart';
import 'package:dotori/core/constants/paths/route_path.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/core/utils/custom_cache_manager.dart';
import 'package:dotori/core/widgets/app_bars/app_bar_back.dart';
import 'package:dotori/core/widgets/error_retry_widget.dart';
import 'package:dotori/core/widgets/tab_bars/custom_tab_bar.dart';
import 'package:dotori/feature/setting/data/models/feedback_history_response.dart';
import 'package:dotori/feature/setting/data/models/matching_history_response.dart';
import 'package:dotori/feature/setting/data/models/my_info_response.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/my_info_view_model.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/setting_view_model.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/states/my_info_state.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/states/setting_state.dart';
import 'package:dotori/feature/setting/presentation/widgets/list_tiles/feedback_history_list_tile.dart';
import 'package:dotori/feature/setting/presentation/widgets/list_tiles/matching_history_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyInfoScreen extends HookConsumerWidget {
  final int initialTabIndex;

  const MyInfoScreen({super.key, this.initialTabIndex = 0});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final SettingState settingState = ref.watch(settingViewModelProvider);
    final MyInfoState myInfoState = ref.watch(myInfoViewModelProvider);
    MyInfoResponse myInfoResponse = settingState.myInfo!;
    DormitoryCategory dormitoryCategory = DomitoryExtension.fromName(
      myInfoResponse.dormitory,
    );

    final tabController = useTabController(
      initialLength: 2,
      initialIndex: initialTabIndex,
    );
    final currentIndex = useState(initialTabIndex);

    useEffect(() {
      Future.microtask(() {
        ref.read(myInfoViewModelProvider.notifier).getMyInfo();
      });
      void listener() {
        currentIndex.value = tabController.index;
      }

      tabController.addListener(listener);
      return () => tabController.removeListener(listener);
    }, [tabController]);

    if (myInfoState.status == UiStatus.loading) {
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

    if (myInfoState.status == UiStatus.error) {
      return Scaffold(
        appBar: AppBarBack.back(),
        body: ErrorRetryWidget(
          onPressed: () {
            ref.read(myInfoViewModelProvider.notifier).getMyInfo();
          },
        ),
      );
    }

    final List<MatchingHistoryResponse> matchingHistories =
        myInfoState.matchingHistories;
    final List<FeedbackHistoryResponse> feedbackHistories =
        myInfoState.feedbackHistories;

    return Scaffold(
      appBar: AppBarBack.back(),
      bottomNavigationBar: currentIndex.value == 1
          ? SafeArea(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.defaultPadding,
                  vertical: 24.h,
                ),
                decoration: BoxDecoration(color: AppColors.gray100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '참고사항',
                      style: context.textStyles.label1.copyWith(
                        color: AppColors.gray200,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      '- 받은 비매너 피드백은 보이지 않습니다.',
                      style: context.textStyles.caption1.copyWith(
                        color: AppColors.gray200,
                      ),
                    ),
                    SizedBox(height: 6.h),
                    Text(
                      '- 피드백 점수가 올라가는 경우 ( 칭찬 피드백 수 X 3 )',
                      style: context.textStyles.caption1.copyWith(
                        color: AppColors.gray200,
                      ),
                    ),
                  ],
                ),
              ),
            )
          : null,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24.h),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.defaultPadding,
                  vertical: 16.h,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 2.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              dormitoryCategory.widget,
                              SizedBox(height: 2.h),
                              Text(
                                myInfoResponse.nickName,
                                style: context.textStyles.btnText.copyWith(
                                  color: AppColors.gray500,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 4.h),
                            ],
                          ),
                        ),
                        SizedBox(width: 14.w),
                        CircleAvatar(
                          radius: 40.r,
                          backgroundColor: AppColors.background,
                          backgroundImage: CachedNetworkImageProvider(
                            myInfoResponse.profileImage,
                            cacheManager: CustomCacheManager(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 17.h),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 18.w,
                              vertical: 14.h,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.background,
                              borderRadius: BorderRadius.circular(
                                AppSizes.radiusMD,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.shadow.withValues(
                                    alpha: 0.25,
                                  ),
                                  offset: Offset(0, 4.h),
                                  blurRadius: 10.r,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '도토리 매칭 수',
                                  style: context.textStyles.label1.copyWith(
                                    color: AppColors.gray300,
                                  ),
                                ),
                                SizedBox(height: 2.h),
                                Text(
                                  '${myInfoResponse.matching.toString()}회',
                                  style: context.textStyles.subHeadline2
                                      .copyWith(color: AppColors.gray500),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 9.w),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 18.w,
                              vertical: 14.h,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.background,
                              borderRadius: BorderRadius.circular(
                                AppSizes.radiusMD,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.shadow.withValues(
                                    alpha: 0.25,
                                  ),
                                  offset: Offset(0, 4.h),
                                  blurRadius: 10.r,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      '피드백 점수',
                                      style: context.textStyles.label1.copyWith(
                                        color: AppColors.gray300,
                                      ),
                                    ),
                                    SizedBox(width: 4.w),
                                    SvgPicture.asset(
                                      IconPath.infoDark,
                                      width: 12.r,
                                      height: 12.r,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 2.h),
                                Text(
                                  '${myInfoResponse.rating.toString()}점',
                                  style: context.textStyles.subHeadline2
                                      .copyWith(color: AppColors.gray500),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(color: AppColors.gray100, height: 2.w, thickness: 2.w),
              SizedBox(height: 18.h),
              CustomTabBar(
                tabController: tabController,
                tabs: [
                  Center(child: Text('매칭 내역')),
                  Center(child: Text('피드백')),
                ],
              ),
              currentIndex.value == 0
                  ? Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 24.h),
                        ListView.builder(
                          itemCount: matchingHistories.length,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return MatchingHistoryListTile(
                              matchingHistoryResponse: matchingHistories[index],
                            );
                          },
                        ),
                        SizedBox(height: 16.h),
                      ],
                    )
                  : Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 24.h),
                        ListView.builder(
                          itemCount: feedbackHistories.length,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return FeedbackHistoryListTile(
                              feedbackHistoryResponse: feedbackHistories[index],
                            );
                          },
                        ),
                        SizedBox(height: 16.h),
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
