import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/constants/enums/dormitory.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DormitoryBadge extends StatelessWidget {
  final DormitoryCategory category;

  const DormitoryBadge({super.key, required this.category});

  factory DormitoryBadge.maeji() =>
      DormitoryBadge(category: DormitoryCategory.maeji);

  factory DormitoryBadge.chungyeon() =>
      DormitoryBadge(category: DormitoryCategory.chungyeon);

  factory DormitoryBadge.saeyeon() =>
      DormitoryBadge(category: DormitoryCategory.saeyeon);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: category.thirdColor,
        borderRadius: BorderRadius.circular(AppSizes.radiusSM),
      ),
      child: Text(
        '${category.title}학사 선호',
        style: context.textStyles.label1.copyWith(color: category.primaryColor),
      ),
    );
  }
}
