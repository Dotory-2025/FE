import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/feature/create_house/domain/entities/condition_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart'; // TODO: 실제 아이콘 사용 시 주석 해제

/// 조건 아이템 위젯
class ConditionItem extends StatelessWidget {
  final ConditionType conditionType;
  final bool isSelected;
  final VoidCallback onTap;

  const ConditionItem({
    super.key,
    required this.conditionType,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          // 아이콘 원형 컨테이너
          Container(
            width: 56.r,
            height: 56.r,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isSelected ? AppColors.gray500 : Colors.transparent,
              border: isSelected
                  ? null
                  : Border.all(color: AppColors.gray200, width: 1),
            ),
            child: Center(
              child: Icon(
                Icons.check,
                size: 28.r,
                color: isSelected ? AppColors.background : AppColors.gray400,
              ),
              // TODO: 실제 아이콘으로 교체
              // child: SvgPicture.asset(
              //   conditionType.iconPath,
              //   width: 28.r,
              //   height: 28.r,
              //   colorFilter: ColorFilter.mode(
              //     isSelected ? AppColors.background : AppColors.gray400,
              //     BlendMode.srcIn,
              //   ),
              // ),
            ),
          ),
          SizedBox(height: 8.h),
          // 텍스트
          Text(
            conditionType.displayName,
            style: Theme.of(context).textTheme.label2.copyWith(
              color: isSelected ? AppColors.gray500 : AppColors.gray400,
            ),
          ),
        ],
      ),
    );
  }
}
