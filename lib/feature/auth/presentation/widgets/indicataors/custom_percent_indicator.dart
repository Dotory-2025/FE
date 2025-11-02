import 'package:dotori/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomPercentIndicatioer extends StatelessWidget {
  final double percent; // 0~1
  final double height;
  final Color backgroundColor;
  final Color progressColor;
  final double borderRadius;
  final Duration animationDuration;

  const CustomPercentIndicatioer({
    super.key,
    required this.percent,
    this.height = 2.0,
    this.backgroundColor = AppColors.gray100,
    this.progressColor = AppColors.primary,
    this.borderRadius = 6.0,
    this.animationDuration = const Duration(milliseconds: 300),
  });

  @override
  Widget build(BuildContext context) {
    final clampedPercent = percent.clamp(0.0, 1.0);
    return LayoutBuilder(
      builder: (context, constraints) {
        final totalWidth = constraints.maxWidth;
        final progressWidth = totalWidth * clampedPercent;

        return Stack(
          children: [
            Container(
              height: height,
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(borderRadius),
              ),
            ),

            AnimatedContainer(
              duration: animationDuration,
              curve: Curves.easeInOut,
              height: height,
              width: progressWidth,
              decoration: BoxDecoration(
                color: progressColor,

                borderRadius: BorderRadius.circular(borderRadius),
              ),
            ),
          ],
        );
      },
    );
  }
}
