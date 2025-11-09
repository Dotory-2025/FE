import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/constants/paths/icon_path.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/core/widgets/modal_bottom_sheets/blurred_bottom_sheet.dart';
import 'package:dotori/feature/auth/presentation/viewmodels/auth_view_model.dart';
import 'package:dotori/feature/auth/presentation/widgets/list_tiles/dormitory_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DormitoryModal extends ConsumerWidget {
  const DormitoryModal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          DormitoryListTile(
            icon: IconPath.maeji,
            title: '매지학사',
            description: '3~4인실 구조로, 공용 화장실과 샤워실을 사용합니다.',
            onPressed: () {
              ref.read(authViewModelProvider.notifier).setDormitory('매지학사');
              context.pop();
            },
          ),
          SizedBox(height: 14.h),
          DormitoryListTile(
            icon: IconPath.saeyeon,
            title: '세연학사',
            description: '방 안에 화장실이 있고, 샤워기가 일체형으로 구성되어 있습니다.',
            onPressed: () {
              ref.read(authViewModelProvider.notifier).setDormitory('세연학사');
              context.pop();
            },
          ),
          SizedBox(height: 14.h),
          DormitoryListTile(
            icon: IconPath.chungyeon,
            title: '청연학사',
            description: '방 안에 화장실이 있으며, 최근 지어진 신식 건물입니다.',
            onPressed: () {
              ref.read(authViewModelProvider.notifier).setDormitory('청연학사');
              context.pop();
            },
          ),
        ],
      ),
    );
  }
}
