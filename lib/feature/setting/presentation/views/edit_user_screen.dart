import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/constants/paths/icon_path.dart';
import 'package:dotori/core/constants/paths/route_path.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/core/utils/custom_cache_manager.dart';
import 'package:dotori/core/widgets/app_bars/app_bar_back.dart';
import 'package:dotori/feature/auth/presentation/widgets/text_fields/auth_nickname_text_form_field.dart';
import 'package:dotori/feature/setting/data/models/my_info_response.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/edit_user_view_model.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/setting_view_model.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/states/edit_user_state.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/states/setting_state.dart';
import 'package:dotori/feature/setting/presentation/widgets/list_tiles/setting_list_tile.dart';
import 'package:dotori/feature/setting/presentation/widgets/modal_bottom_sheet/edit_dormitory_modal.dart';
import 'package:dotori/feature/setting/presentation/widgets/modal_bottom_sheet/edit_profile_modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EditUserScreen extends HookConsumerWidget {
  const EditUserScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final SettingState settingState = ref.watch(settingViewModelProvider);
    MyInfoResponse myInfoResponse = settingState.myInfo!;
    final EditUserState editUserState = ref.watch(editUserViewModelProvider);
    final EditUserViewModel editUserViewModel = ref.read(
      editUserViewModelProvider.notifier,
    );

    final TextEditingController textEditingController =
        useTextEditingController();
    final FocusNode focusNode = useFocusNode();

    final ValueNotifier<bool> isFilled = useState(false);
    final ValueNotifier<bool> isCheckNickname = useState(false);
    final bool isDuplication = false;

    useEffect(() {
      String previousText = textEditingController.text;

      void listener() {
        final currentText = textEditingController.text;

        if (currentText != previousText) {
          isFilled.value = currentText.length >= 3;
          isCheckNickname.value = false;
          ref.read(editUserViewModelProvider.notifier).setNickname(null);

          previousText = currentText;
        }
      }

      textEditingController.addListener(listener);
      return () => textEditingController.removeListener(listener);
    }, [textEditingController]);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarBack.backWithTextButtonGray(
        buttonText: '저장',
        onActionPressed: editUserViewModel.isInfoFilled
            ? () async {
                await ref.read(editUserViewModelProvider.notifier).updateUser();
                if (!context.mounted) return;
                context.pop();
              }
            : null,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            focusNode.unfocus();
          },
          behavior: HitTestBehavior.translucent,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 32.h),
                Center(
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (context) => EditProfileModal(),
                      );
                    },
                    icon: Stack(
                      children: [
                        CircleAvatar(
                          radius: 72.5.r,
                          backgroundColor: AppColors.background,
                          backgroundImage: editUserState.profileImage != null
                              ? MemoryImage(editUserState.profileImage!)
                              : CachedNetworkImageProvider(
                                  myInfoResponse.profileImage,
                                  cacheManager: CustomCacheManager(),
                                ),
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
                ),
                SizedBox(height: 24.h),
                Row(
                  children: [
                    Expanded(
                      child: AuthNicknameTextFormField(
                        focusNode: focusNode,
                        textEditingController: textEditingController,
                        hintText: myInfoResponse.nickName,
                      ),
                    ),
                    TextButton(
                      onPressed: isFilled.value && !isCheckNickname.value
                          ? () {
                              /// --- 🧱 중복확인 로직
                              isCheckNickname.value = true;
                              ref
                                  .read(editUserViewModelProvider.notifier)
                                  .setNickname(textEditingController.text);
                            }
                          : null,
                      style: ButtonStyle(
                        foregroundColor: WidgetStateProperty.resolveWith<Color>((
                          states,
                        ) {
                          if (states.contains(WidgetState.disabled)) {
                            return AppColors.gray200;
                          }
                          return AppColors.gray500;
                        }),
                      ),
                      child: Text('중복확인', style: context.textStyles.btnText),
                    ),
                    SizedBox(width: 4.w),
                  ],
                ),
                SizedBox(height: 4.h),
                Visibility(
                  visible: isCheckNickname.value ? true : false,
                  maintainSize: true,
                  maintainAnimation: true,
                  maintainState: true,
                  child: Padding(
                    padding: EdgeInsets.only(left: 4.w),
                    child: Text(
                      isDuplication ? '중복된 닉네임 입니다.' : '사용 가능한 닉네임입니다.',
                      style: context.textStyles.body3.copyWith(
                        color: isDuplication
                            ? AppColors.error
                            : AppColors.green200,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 24.h),
                SettingListTile.goWithBadge(
                  title: '선호학사 변경',
                  onPressed: () {
                    focusNode.unfocus();
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (context) => EditDormitoryModal(),
                    );
                  },
                ),
                SizedBox(height: 8.h),
                SettingListTile.go(
                  title: '생활패턴 변경',
                  onPressed: () {
                    context.push(RoutePath.editRoutine);
                  },
                ),
                SizedBox(height: 8.h),
                SettingListTile.go(
                  title: '내가 쓴 피드백',
                  onPressed: () {
                    context.push(RoutePath.myFeedbacks);
                  },
                ),
                Spacer(),
                SettingListTile.go(
                  title: '탈퇴하기',
                  onPressed: () {},
                  titleColor: AppColors.gray200,
                ),
                SizedBox(height: 16.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
