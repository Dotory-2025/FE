import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/paths/icon_path.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/core/utils/custom_cache_manager.dart';
import 'package:dotori/feature/setting/data/models/my_info_response.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/setting_view_model.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/states/setting_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomScaffold extends HookConsumerWidget {
  final StatefulNavigationShell navigationShell;

  const CustomScaffold({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = useState(navigationShell.currentIndex);
    final SettingState settingState = ref.watch(settingViewModelProvider);
    MyInfoResponse myInfoResponse = settingState.myInfo!;

    void onTapNav(int index) {
      navigationShell.goBranch(index);
      currentIndex.value = index;
    }

    return Scaffold(
      backgroundColor: AppColors.background,
      extendBody: true,
      body: SafeArea(
        child: Stack(
          children: [
            navigationShell,
            Positioned(
              left: 32.5.r,
              right: 32.5.r,
              bottom: 16.h,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 8.w),
                decoration: BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.circular(35.r),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.shadow.withValues(alpha: 0.25),
                      offset: Offset(0, 4.h),
                      blurRadius: 24.r,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Row(
                  children: List.generate(4, (index) {
                    final isActive = index == currentIndex.value;

                    String iconPath = '';
                    String label = '';
                    double iconSize = 32.r;

                    switch (index) {
                      case 0:
                        iconPath = isActive
                            ? IconPath.homeActivate
                            : IconPath.homeDisable;
                        label = '홈';
                        break;
                      case 1:
                        iconPath = isActive
                            ? IconPath.chattingActivate
                            : IconPath.chattingDisable;
                        label = '채팅';
                        break;
                      case 2:
                        iconPath = isActive
                            ? IconPath.notificationActivate
                            : IconPath.notificationDisable;
                        label = '알림';
                        break;
                      case 3:
                        label = '마이페이지';
                        break;
                    }

                    return Expanded(
                      child: InkWell(
                        borderRadius: BorderRadius.circular(35.r),
                        onTap: () => onTapNav(index),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 6.h),
                            if (index == 3)
                              SizedBox(
                                width: 32.r,
                                height: 32.r,
                                child: Center(
                                  child: CircleAvatar(
                                    radius: isActive ? 10.75.r : 10.r,
                                    backgroundColor: AppColors.primary,
                                    child: CircleAvatar(
                                      radius: isActive ? 9.25.r : 10.r,
                                      backgroundColor: AppColors.background,
                                      backgroundImage:
                                          CachedNetworkImageProvider(
                                            myInfoResponse.profileImage,
                                            cacheManager: CustomCacheManager(),
                                          ),
                                    ),
                                  ),
                                ),
                              )
                            else
                              SvgPicture.asset(
                                iconPath,
                                width: iconSize,
                                height: iconSize,
                              ),
                            Text(
                              label,
                              style: context.textStyles.label2.copyWith(
                                color: isActive
                                    ? AppColors.primary
                                    : AppColors.gray200,
                              ),
                            ),
                            SizedBox(height: 6.h),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
