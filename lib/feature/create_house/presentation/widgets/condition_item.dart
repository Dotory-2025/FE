import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/feature/create_house/domain/entities/condition_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart'; // TODO: 실제 아이콘 사용 시 주석 해제

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
    return Material(
      color: isSelected ? AppColors.gray500 : Colors.transparent,
      shape: CircleBorder(),
      child: InkWell(
        onTap: onTap,
        customBorder: CircleBorder(),
        child: Container(
          width: 50.r,
          height: 50.r,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                conditionType.iconPath,
                width: 32.r,
                height: 32.r,
                colorFilter: ColorFilter.mode(
                  isSelected ? AppColors.background : AppColors.gray400,
                  BlendMode.srcIn,
                ),
              ),
              Container(
                height: 18.r,
                alignment: Alignment.center,
                child: Text(
                  conditionType.displayName,
                  style: Theme.of(context).textTheme.label2.copyWith(
                    color: isSelected
                        ? AppColors.background
                        : AppColors.gray400,
                    fontSize: 10.sp,
                    height: 1.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
