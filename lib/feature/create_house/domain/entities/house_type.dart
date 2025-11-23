import 'package:dotori/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

/// 기숙사 타입 열거형
enum HouseType {
  maeji('매지학사', '3-4인실 구조', '공용 화장실과 샤워실을 사용합니다.'),
  saeyeon('세연학사', '2-3인실 구조', '방 안에 화장실이 있습니다.'),
  chungyeon('청연학사', '3인실 구조', '최근 지어진 신관 건물입니다.');

  final String displayName;
  final String description;
  final String notice;

  const HouseType(this.displayName, this.description, this.notice);

  /// 기숙사 타입별 색상 반환
  Color get backgroundColor {
    switch (this) {
      case HouseType.maeji:
        return AppColors.orange000;
      case HouseType.saeyeon:
        return AppColors.green000;
      case HouseType.chungyeon:
        return AppColors.blue000;
    }
  }

  Color get iconColor {
    switch (this) {
      case HouseType.maeji:
        return AppColors.orange200;
      case HouseType.saeyeon:
        return AppColors.green200;
      case HouseType.chungyeon:
        return AppColors.blue200;
    }
  }
}
