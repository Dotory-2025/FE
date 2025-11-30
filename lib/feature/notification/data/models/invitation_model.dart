import 'package:flutter/material.dart';
import 'package:dotori/core/constants/app_colors.dart';

enum InvitationType {
  green,
  blue,
  orange;

  Color get color {
    switch (this) {
      case InvitationType.green:
        return AppColors.green200;
      case InvitationType.blue:
        return AppColors.blue200;
      case InvitationType.orange:
        return AppColors.orange200;
    }
  }
}

class InvitationModel {
  final int id;
  final String title;
  final String description;
  final String timeAgo;
  final InvitationType type;

  InvitationModel({
    required this.id,
    required this.title,
    required this.description,
    required this.timeAgo,
    required this.type,
  });
}
