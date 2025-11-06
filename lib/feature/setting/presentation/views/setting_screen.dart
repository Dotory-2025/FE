import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/constants/enums/dormitory.dart';
import 'package:dotori/core/constants/paths/icon_path.dart';
import 'package:dotori/core/constants/paths/route_path.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/core/utils/custom_cache_manager.dart';
import 'package:dotori/core/utils/custom_tab_launcher.dart';
import 'package:dotori/core/widgets/app_bars/app_bar_logo.dart';
import 'package:dotori/feature/setting/data/models/my_info_response.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/setting_view_model.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/states/setting_state.dart';
import 'package:dotori/feature/setting/presentation/widgets/list_tiles/setting_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingScreen extends ConsumerWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final SettingState settingState = ref.watch(settingViewModelProvider);
    MyInfoResponse myInfoResponse = settingState.myInfo!;
    DormitoryCategory dormitoryCategory = DomitoryExtension.fromName(
      myInfoResponse.dormitory,
    );

    return Scaffold(
      appBar: AppBarLogo.logo(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24.h),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.defaultPadding,
                  vertical: 12.h,
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
                              TextButton(
                                onPressed: () {
                                  context.push(RoutePath.editUser);
                                },
                                child: Row(
                                  children: [
                                    Text(
                                      '계정 설정',
                                      style: context.textStyles.label1.copyWith(
                                        color: AppColors.gray200,
                                      ),
                                    ),
                                    SizedBox(width: 6.w),
                                    SvgPicture.asset(
                                      IconPath.goSM,
                                      width: 5.r,
                                      height: 10.r,
                                    ),
                                  ],
                                ),
                              ),
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
                          child: InkWell(
                            onTap: () {
                              context.push(RoutePath.myInfo, extra: {'tabIndex': 0});
                            },
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
                                  Row(
                                    children: [
                                      Flexible(
                                        child: Text(
                                          '${myInfoResponse.matching.toString()}회',
                                          style: context.textStyles.subHeadline2
                                              .copyWith(
                                                color: AppColors.gray500,
                                              ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      SizedBox(width: 6.w),
                                      SvgPicture.asset(
                                        IconPath.goXS,
                                        width: 3.5.r,
                                        height: 7.r,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 9.w),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              context.push(RoutePath.myInfo, extra: {'tabIndex': 1});
                            },
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
                                  Row(
                                    children: [
                                      Flexible(
                                        child: Text(
                                          '${myInfoResponse.rating.toString()}점',
                                          style: context.textStyles.subHeadline2
                                              .copyWith(color: AppColors.gray500),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      SizedBox(width: 6.w),
                                      SvgPicture.asset(
                                        IconPath.goXS,
                                        width: 3.5.r,
                                        height: 7.r,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4.h),
              Divider(color: AppColors.gray100, height: 2.w, thickness: 2.w),
              SizedBox(height: 24.h),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.defaultPadding,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '앱 설정',
                      style: context.textStyles.btnText.copyWith(
                        color: AppColors.gray500,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    SettingListTile.go(
                      title: '내가 작성한 글',
                      onPressed: () {
                        context.push(RoutePath.myPosts);
                      },
                    ),
                    SizedBox(height: 6.h),
                    SettingListTile.go(title: '알림 설정', onPressed: () {}),
                    SizedBox(height: 6.h),
                    SettingListTile.go(
                      title: '차단된 사용자',
                      onPressed: () {
                        context.push(RoutePath.blockUsers);
                      },
                    ),
                    SizedBox(height: 18.h),
                    Text(
                      '고객 지원',
                      style: context.textStyles.btnText.copyWith(
                        color: AppColors.gray500,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    SettingListTile.go(title: '고객센터 / 문의', onPressed: () {}),
                    SizedBox(height: 6.h),
                    SettingListTile.version(title: '버전 정보'),
                    SizedBox(height: 18.h),
                    Text(
                      '약관 및 정책',
                      style: context.textStyles.btnText.copyWith(
                        color: AppColors.gray500,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    SettingListTile.go(
                      title: '서비스 이용약관',
                      onPressed: () {
                        launchCustomTab(
                          context,
                          url: 'https://www.google.com',
                          title: '서비스 이용약관',
                        );
                      },
                    ),
                    SizedBox(height: 6.h),
                    SettingListTile.go(
                      title: '개인정보 처리방침',
                      onPressed: () {
                        launchCustomTab(
                          context,
                          url: 'https://www.google.com',
                          title: '개인정보 처리방침',
                        );
                      },
                    ),
                    SizedBox(height: 18.h),
                    SettingListTile.go(
                      title: '로그아웃',
                      onPressed: () {},
                      titleColor: AppColors.gray200,
                    ),
                    SizedBox(height: 96.h),
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
