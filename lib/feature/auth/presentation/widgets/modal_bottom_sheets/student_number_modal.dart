import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/constants/paths/icon_path.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/core/widgets/modal_bottom_sheets/blurred_bottom_sheet.dart';
import 'package:dotori/feature/auth/presentation/viewmodels/auth_view_model.dart';
import 'package:dotori/feature/auth/presentation/widgets/list_tiles/student_number_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StudentNumberModal extends ConsumerWidget {
  const StudentNumberModal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BlurredBottomSheet(
      height: 382,
      padding: EdgeInsets.zero,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 24.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultPadding),
            child: Row(
              children: [
                Text(
                  '학번 선택',
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
          /// --- 🧱 학번 불러오는 방식에 따라 로직 변경 리스트뷰 or 리스트
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 14.h),
                  StudentNumberListTile.disable(year: '2025'),
                  StudentNumberListTile.enable(
                    year: '2024',
                    onPressed: () {
                      ref
                          .read(authViewModelProvider.notifier)
                          .setStudentNumber(2024);
                      context.pop();
                    },
                  ),
                  StudentNumberListTile.enable(
                    year: '2023',
                    onPressed: () {
                      ref
                          .read(authViewModelProvider.notifier)
                          .setStudentNumber(2023);
                      context.pop();
                    },
                  ),
                  StudentNumberListTile.enable(
                    year: '2022',
                    onPressed: () {
                      ref
                          .read(authViewModelProvider.notifier)
                          .setStudentNumber(2022);
                      context.pop();
                    },
                  ),
                  StudentNumberListTile.enable(
                    year: '2021',
                    onPressed: () {
                      ref
                          .read(authViewModelProvider.notifier)
                          .setStudentNumber(2021);
                      context.pop();
                    },
                  ),
                  StudentNumberListTile.enable(
                    year: '2020',
                    onPressed: () {
                      ref
                          .read(authViewModelProvider.notifier)
                          .setStudentNumber(2020);
                      context.pop();
                    },
                  ),
                  StudentNumberListTile.enable(
                    year: '2019',
                    onPressed: () {
                      ref
                          .read(authViewModelProvider.notifier)
                          .setStudentNumber(2019);
                      context.pop();
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
