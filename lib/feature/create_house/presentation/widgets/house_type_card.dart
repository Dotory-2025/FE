import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/feature/create_house/domain/entities/house_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// 기숙사 타입 선택 카드 위젯
class HouseTypeCard extends StatelessWidget {
  final HouseType houseType;
  final VoidCallback onTap;

  const HouseTypeCard({
    super.key,
    required this.houseType,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.circular(AppSizes.radiusMD),
          boxShadow: [
            BoxShadow(
              color: Color(0xFFEBEBE9).withOpacity(0.25),
              offset: Offset(0, 4),
              blurRadius: 20,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 상단 안내 텍스트
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4.r),
              ),
              child: Text(
                houseType.notice,
                style: Theme.of(
                  context,
                ).textTheme.caption1.copyWith(color: AppColors.gray400),
              ),
            ),
            SizedBox(height: 6.h),
            // 기존 카드 내용
            Row(
              children: [
                // 아이콘
                SvgPicture.asset(
                  _getIconPath(houseType),
                  width: 26.w,
                  height: 28.w,
                ),
                SizedBox(width: 16.w),
                // 텍스트
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        houseType.displayName,
                        style: Theme.of(context).textTheme.btnText.copyWith(
                          color: houseType.iconColor,
                        ),
                      ),
                      Text(
                        houseType.description,
                        style: Theme.of(
                          context,
                        ).textTheme.caption1.copyWith(color: AppColors.gray400),
                      ),
                    ],
                  ),
                ),
                // 화살표 아이콘
                SvgPicture.asset(
                  'assets/icons/go.svg',
                  width: 28.w,
                  height: 28.w,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// 기숙사 타입별 아이콘 경로 반환
  String _getIconPath(HouseType type) {
    switch (type) {
      case HouseType.maeji:
        return 'assets/icons/maeji.svg';
      case HouseType.saeyeon:
        return 'assets/icons/saeyeon.svg';
      case HouseType.chungyeon:
        return 'assets/icons/chungyeon.svg';
    }
  }
}
