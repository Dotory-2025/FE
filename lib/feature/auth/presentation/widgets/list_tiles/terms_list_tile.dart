import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/core/utils/custom_tab_launcher.dart';
import 'package:dotori/feature/auth/presentation/widgets/toggles/custom_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum TermsListTileType { all, one }

class TermsListTile extends StatelessWidget {
  final TermsListTileType type;
  final bool isChecked;
  final ValueChanged<bool> onChanged;
  final String title;
  final String? url;

  const TermsListTile({
    super.key,
    required this.type,
    required this.isChecked,
    required this.onChanged,
    required this.title,
    this.url,
  });

  factory TermsListTile.all({
    required bool isChecked,
    required ValueChanged<bool> onChanged,
    required String title,
  }) => TermsListTile(
    type: TermsListTileType.all,
    isChecked: isChecked,
    onChanged: onChanged,
    title: title,
  );

  factory TermsListTile.one({
    required bool isChecked,
    required ValueChanged<bool> onChanged,
    required String title,
    required String url,
  }) => TermsListTile(
    type: TermsListTileType.one,
    isChecked: isChecked,
    onChanged: onChanged,
    title: title,
    url: url,
  );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged(!isChecked),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.defaultPadding,
          vertical: 18.h,
        ),
        child: Row(
          children: [
            CustomCheckbox(
              isChecked: isChecked,
              onChanged: onChanged,
              iconSize: type == TermsListTileType.all ? 32.r : 28.r,
            ),
            SizedBox(width: 8.w),
            Text(
              title,
              style: type == TermsListTileType.all
                  ? context.textStyles.subHeadline2.copyWith(
                      color: AppColors.gray500,
                    )
                  : context.textStyles.body1.copyWith(color: AppColors.gray400),
            ),
            Spacer(),
            if (type == TermsListTileType.one)
              TextButton(
                onPressed: () {
                  launchCustomTab(
                    context,
                    url: url!,
                    title: title,
                  );
                },
                child: Text(
                  '보기',
                  style: context.textStyles.body3.copyWith(
                    color: AppColors.gray200,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
