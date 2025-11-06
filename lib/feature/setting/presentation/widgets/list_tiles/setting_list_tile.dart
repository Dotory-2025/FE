import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/enums/dormitory.dart';
import 'package:dotori/core/constants/paths/icon_path.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/core/widgets/badges/dormitory_badge.dart';
import 'package:dotori/feature/setting/data/models/my_info_response.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/edit_user_view_model.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/setting_view_model.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/states/edit_user_state.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/states/setting_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum SettingListTileType { go, goWithBadge, version }

class SettingListTile extends ConsumerWidget {
  final SettingListTileType type;
  final String title;
  final Color? titleColor;
  final VoidCallback? onPressed;

  const SettingListTile({
    super.key,
    required this.type,
    required this.title,
    this.onPressed,
    this.titleColor,
  });

  factory SettingListTile.go({
    required String title,
    required VoidCallback onPressed,
    Color? titleColor,
  }) => SettingListTile(
    type: SettingListTileType.go,
    title: title,
    onPressed: onPressed,
    titleColor: titleColor,
  );

  factory SettingListTile.goWithBadge({
    required String title,
    required VoidCallback onPressed,
  }) => SettingListTile(
    type: SettingListTileType.goWithBadge,
    title: title,
    onPressed: onPressed,
  );

  factory SettingListTile.version({required String title}) =>
      SettingListTile(type: SettingListTileType.version, title: title);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final SettingState settingState = ref.watch(settingViewModelProvider);
    final EditUserState? editUserState =
    type == SettingListTileType.goWithBadge
        ? ref.watch(editUserViewModelProvider)
        : null;
    MyInfoResponse myInfoResponse = settingState.myInfo!;
    DormitoryCategory dormitoryCategory = DomitoryExtension.fromName(
      editUserState?.dormitory ?? myInfoResponse.dormitory,
    );

    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        height: 52.h,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: Row(
                  children: [
                    Text(
                      title,
                      style: context.textStyles.body3.copyWith(
                        color: titleColor ?? AppColors.gray400,
                      ),
                    ),
                    Spacer(),
                    switch (type) {
                      SettingListTileType.go => SizedBox(
                        width: 24.r,
                        height: 24.h,
                        child: Center(
                          child: SvgPicture.asset(
                            IconPath.goSM,
                            width: 5.r,
                            height: 10.r,
                          ),
                        ),
                      ),
                      SettingListTileType.goWithBadge => Row(
                        children: [
                          DormitoryBadge(category: dormitoryCategory),
                          SizedBox(width: 8.w),
                          SizedBox(
                            width: 24.r,
                            height: 24.h,
                            child: Center(
                              child: SvgPicture.asset(
                                IconPath.goSM,
                                width: 5.r,
                                height: 10.r,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SettingListTileType.version => Text(
                        '0.0.0',
                        style: context.textStyles.label1.copyWith(
                          color: AppColors.gray200,
                        ),
                      ),
                    },
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Divider(
                color: AppColors.gray100,
                height: 2.h,
                thickness: 2.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
