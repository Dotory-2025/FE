import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/paths/icon_path.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomToast {
  static void showToast(BuildContext context, String message, double bottom) {
    final overlay = Overlay.of(context);
    late OverlayEntry overlayEntry;
    bool isVisible = true;

    overlayEntry = OverlayEntry(
      builder: (context) => Positioned.fill(
        bottom: bottom,
        child: SafeArea(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: StatefulBuilder(
              builder: (context, setState) {
                return AnimatedOpacity(
                  opacity: isVisible ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 300),
                  onEnd: () {
                    if (!isVisible) overlayEntry.remove();
                  },
                  child: Material(
                    color: Colors.transparent,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24.w,
                        vertical: 10.h,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.gray100,
                        borderRadius: BorderRadius.circular(22.r),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.shadow.withValues(alpha: 0.25),
                            blurRadius: 24.r,
                            spreadRadius: 0,
                            offset: Offset(0, 4.h),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(
                            IconPath.warningToast,
                            width: 20.r,
                            height: 20.r,
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            message,
                            style: context.textStyles.body3.copyWith(
                              color: AppColors.gray300,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );

    overlay.insert(overlayEntry);

    Future.delayed(const Duration(seconds: 1), () {
      isVisible = false;
      overlayEntry.markNeedsBuild();
    });
  }
}
