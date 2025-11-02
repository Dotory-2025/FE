import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPageIndicator extends StatelessWidget {
  final int currentIndex;
  final int itemCount;

  const CustomPageIndicator({
    super.key,
    required this.currentIndex,
    required this.itemCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(itemCount, (index) {
        final bool isActive = index == currentIndex;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: 32.w,
          height: 2.h,
          decoration: BoxDecoration(
            color: isActive ? AppColors.primary : AppColors.gray200,
            borderRadius: BorderRadius.circular(AppSizes.radiusMD),
          ),
        );
      }),
    );
  }
}