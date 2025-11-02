import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/constants/paths/icon_path.dart';
import 'package:dotori/core/constants/paths/route_path.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/core/widgets/app_bars/app_bar_back.dart';
import 'package:dotori/core/widgets/buttons/custom_elevated_button.dart';
import 'package:dotori/feature/auth/presentation/viewmodels/auth_view_model.dart';
import 'package:dotori/feature/auth/presentation/viewmodels/states/auth_state.dart';
import 'package:dotori/feature/auth/presentation/widgets/modal_bottom_sheets/profile_modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthProfileScreen extends ConsumerWidget {
  const AuthProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AuthState authState = ref.watch(authViewModelProvider);
    return Scaffold(
      appBar: AppBarBack.backWithTextButton(
        buttonText: '건너뛰기',
        onActionPressed: () {
          /// --- 🧱 기본 프로필 로직
          context.push(RoutePath.termsAgreement);
        },
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultPadding),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 44.h),
                Text(
                  '프로필 사진 선택하기',
                  style: context.textStyles.headLine1.copyWith(
                    color: AppColors.gray500,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  '나를 표현할 사진을 선택하세요!',
                  style: context.textStyles.body1.copyWith(
                    color: AppColors.gray400,
                  ),
                ),
                SizedBox(height: 121.h),
                IconButton(
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (context) => ProfileModal(),
                    );
                  },
                  icon: Stack(
                    children: [
                      authState.croppedProfileImage != null
                          ? CircleAvatar(
                              radius: 72.5.r,
                              backgroundColor: AppColors.background,
                              backgroundImage: MemoryImage(
                                authState.croppedProfileImage!,
                              ),
                            )
                          : SvgPicture.asset(
                              IconPath.profile,
                              width: 145.r,
                              height: 145.r,
                            ),
                      Positioned(
                        bottom: 4.h,
                        right: 4.h,
                        child: SvgPicture.asset(
                          IconPath.circlePlus,
                          width: 32.r,
                          height: 32.r,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomElevatedButton.primary(
                  text: '완료',
                  height: 60.h,
                  width: double.infinity,
                  onPressed: authState.croppedProfileImage != null
                      ? () {
                          /// --- 🧱 프로필 로직
                          context.push(RoutePath.termsAgreement);
                        }
                      : null,
                  textStyle: context.textStyles.btnText,
                  radius: AppSizes.radiusMD,
                ),
                SizedBox(height: AppSizes.bottomPadding),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
