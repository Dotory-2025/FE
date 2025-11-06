import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/paths/icon_path.dart';
import 'package:dotori/core/widgets/badges/dormitory_badge.dart';
import 'package:flutter/material.dart';

enum DormitoryCategory {maeji, chungyeon, saeyeon}

extension DomitoryExtension on DormitoryCategory {
  String get title => switch (this) {
    DormitoryCategory.maeji => '매지',
    DormitoryCategory.chungyeon => '청연',
    DormitoryCategory.saeyeon => '세연',
  };

  Color get primaryColor => switch (this) {
    DormitoryCategory.maeji => AppColors.orange200,
    DormitoryCategory.chungyeon => AppColors.blue200,
    DormitoryCategory.saeyeon => AppColors.green200,
  };

  Color get secondaryColor => switch (this) {
    DormitoryCategory.maeji => AppColors.orange100,
    DormitoryCategory.chungyeon => AppColors.blue100,
    DormitoryCategory.saeyeon => AppColors.green100,
  };

  Color get thirdColor => switch (this) {
    DormitoryCategory.maeji => AppColors.orange000,
    DormitoryCategory.chungyeon => AppColors.blue000,
    DormitoryCategory.saeyeon => AppColors.green000,
  };

  Widget get widget => switch (this) {
    DormitoryCategory.maeji => DormitoryBadge.maeji(),
    DormitoryCategory.chungyeon => DormitoryBadge.chungyeon(),
    DormitoryCategory.saeyeon => DormitoryBadge.saeyeon(),
  };

  String get description => switch (this) {
    DormitoryCategory.maeji => '3~4인실 구조로, 공용 화장실과 샤워실을 사용합니다.',
    DormitoryCategory.chungyeon => '방 안에 화장실이 있고, 샤워기가 일체형으로 구성되어 있습니다.',
    DormitoryCategory.saeyeon => '방 안에 화장실이 있으며, 최근 지어진 신식 건물입니다.',
  };

  String get iconPath => switch (this) {
    DormitoryCategory.maeji => IconPath.maeji,
    DormitoryCategory.chungyeon => IconPath.chungyeon,
    DormitoryCategory.saeyeon => IconPath.saeyeon,
  };

  static DormitoryCategory fromName(String name) {
    return DormitoryCategory.values.firstWhere(
          (value) => value.name == name.trim(),
    );
  }
}


