import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/constants/enums/dormitory.dart';
import 'package:dotori/core/constants/paths/icon_path.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/core/widgets/modal_bottom_sheets/blurred_bottom_sheet.dart';
import 'package:dotori/feature/setting/data/models/my_info_response.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/edit_user_view_model.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/setting_view_model.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/states/edit_user_state.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/states/setting_state.dart';
import 'package:dotori/feature/setting/presentation/widgets/list_tiles/edit_dormitory_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EditDormitoryModal extends ConsumerWidget {
  const EditDormitoryModal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final SettingState settingState = ref.watch(settingViewModelProvider);
    final EditUserState editUserState = ref.watch(editUserViewModelProvider);
    MyInfoResponse myInfoResponse = settingState.myInfo!;
    return BlurredBottomSheet(
      height: 382,
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 24.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultPadding),
            child: Row(
              children: [
                Text(
                  '선호학사 선택',
                  style: context.textStyles.sectionHeadline1.copyWith(
                    color: AppColors.gray400,
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {
                    context.pop();
                  },
                  icon: SvgPicture.asset(
                    IconPath.closeListTile,
                    width: 24.r,
                    height: 24.r,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.h),
          Divider(color: AppColors.gray100, height: 2.h, thickness: 2.h),
          SizedBox(height: 14.h),
          EditDormitoryListTile(
            category: DormitoryCategory.maeji,
            onPressed: () {
              if ((editUserState.dormitory ?? myInfoResponse.dormitory) ==
                  DormitoryCategory.maeji.name)
                return;
              ref
                  .read(editUserViewModelProvider.notifier)
                  .setDormitory(
                myInfoResponse.dormitory == DormitoryCategory.maeji.name
                        ? null
                        : DormitoryCategory.maeji.name,
                  );
              context.pop();
            },
          ),
          SizedBox(height: 14.h),
          EditDormitoryListTile(
            category: DormitoryCategory.saeyeon,
            onPressed: () {
              if ((editUserState.dormitory ?? myInfoResponse.dormitory) ==
                  DormitoryCategory.saeyeon.name)
                return;
              ref
                  .read(editUserViewModelProvider.notifier)
                  .setDormitory(
                    myInfoResponse.dormitory == DormitoryCategory.saeyeon.name
                        ? null
                        : DormitoryCategory.saeyeon.name,
                  );
              context.pop();
            },
          ),
          SizedBox(height: 14.h),
          EditDormitoryListTile(
            category: DormitoryCategory.chungyeon,
            onPressed: () {
              if ((editUserState.dormitory ?? myInfoResponse.dormitory) ==
                  DormitoryCategory.chungyeon.name)
                return;
              ref
                  .read(editUserViewModelProvider.notifier)
                  .setDormitory(
                    myInfoResponse.dormitory == DormitoryCategory.chungyeon.name
                        ? null
                        : DormitoryCategory.chungyeon.name,
                  );
              context.pop();
            },
          ),
        ],
      ),
    );
  }
}
