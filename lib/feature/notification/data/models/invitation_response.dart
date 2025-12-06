import 'package:dotori/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'invitation_response.freezed.dart';
part 'invitation_response.g.dart';

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

@freezed
abstract class InvitationResponse with _$InvitationResponse {
  const factory InvitationResponse({
    required int id,
    required String title,
    required String description,
    required String timeAgo,
    required InvitationType type,
  }) = _InvitationResponse;

  factory InvitationResponse.fromJson(Map<String, dynamic> json) =>
      _$InvitationResponseFromJson(json);
}
