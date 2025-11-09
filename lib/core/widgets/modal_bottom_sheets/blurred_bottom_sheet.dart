import 'dart:ui';

import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BlurredBottomSheet extends StatelessWidget {
  final Widget child;
  final double blurX;
  final double blurY;
  final EdgeInsets? padding;
  final Color? backgroundColor;
  final double? radius;
  final double? height;

  const BlurredBottomSheet({
    super.key,
    required this.child,
    this.blurX = 1,
    this.blurY = 1,
    this.height, // ✅ 기본값 제거
    this.padding,
    this.backgroundColor,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: blurX.w,
          sigmaY: blurY.h,
        ),
        child: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Container(
            width: double.infinity,
            height: height?.h,
            decoration: BoxDecoration(
              color: backgroundColor ?? AppColors.background,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(radius ?? AppSizes.radiusMD),
              ),
            ),
            padding: padding ??
                EdgeInsets.symmetric(
                  horizontal: AppSizes.defaultPadding,
                ),
            child: child,
          ),
        ),
      ),
    );
  }
}
