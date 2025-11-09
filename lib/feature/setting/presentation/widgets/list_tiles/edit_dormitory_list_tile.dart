import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/enums/dormitory.dart';
import 'package:dotori/core/constants/paths/icon_path.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/feature/setting/data/models/my_info_response.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/edit_user_view_model.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/setting_view_model.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/states/edit_user_state.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/states/setting_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EditDormitoryListTile extends ConsumerWidget {
  final DormitoryCategory category;
  final VoidCallback onPressed;

  const EditDormitoryListTile({
    super.key,
    required this.category,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final EditUserState editUserState = ref.watch(editUserViewModelProvider);
    final SettingState settingState = ref.watch(settingViewModelProvider);
    MyInfoResponse myInfoResponse = settingState.myInfo!;

    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: EdgeInsets.only(
          left: 24.w,
          right: 20.w,
          top: 10.h,
          bottom: 14.h,
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category.description,
                  style: context.textStyles.caption1.copyWith(
                    color: AppColors.gray300,
                  ),
                ),
                SizedBox(height: 4.h),
                Row(
                  children: [
                    SvgPicture.asset(
                      category.iconPath,
                      width: 18.r,
                      height: 20.r,
                    ),
                    SizedBox(width: 6.w),
                    Text(
                      '${category.title}학사',
                      style: context.textStyles.subHeadline2.copyWith(
                        color: AppColors.gray500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            category.name ==
                    (editUserState.dormitory ?? myInfoResponse.dormitory)
                ? Text(
                    '설정됨',
                    style: context.textStyles.btnText.copyWith(
                      color: category.primaryColor,
                    ),
                  )
                : SvgPicture.asset(IconPath.go, width: 28.r, height: 28.r),
          ],
        ),
      ),
    );
  }
}
