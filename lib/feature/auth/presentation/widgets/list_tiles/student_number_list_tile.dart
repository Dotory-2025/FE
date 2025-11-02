import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/paths/icon_path.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:just_the_tooltip/just_the_tooltip.dart';

enum StudentNumberStatus { enable, disable }

class StudentNumberListTile extends HookWidget {
  final String year;
  final StudentNumberStatus status;
  final VoidCallback? onPressed;

  const StudentNumberListTile({
    super.key,
    required this.year,
    required this.status,
    this.onPressed,
  });

  factory StudentNumberListTile.enable({
    required String year,
    required VoidCallback onPressed,
  }) => StudentNumberListTile(
    year: year,
    status: StudentNumberStatus.enable,
    onPressed: onPressed,
  );

  factory StudentNumberListTile.disable({required String year}) =>
      StudentNumberListTile(year: year, status: StudentNumberStatus.disable);

  @override
  Widget build(BuildContext context) {
    final tooltipController = useMemoized(() => JustTheController());
    final isShown = useState(false);

    return InkWell(
      onTap: status == StudentNumberStatus.enable ? onPressed : null,
      child: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 20.w, vertical: 14.h),
        child: Row(
          children: [
            Text(
              '$year 학번',
              style: context.textStyles.subHeadline2.copyWith(
                color: status == StudentNumberStatus.enable
                    ? AppColors.gray500
                    : AppColors.gray200,
              ),
            ),
            Spacer(),
            if (status == StudentNumberStatus.enable)
              SvgPicture.asset(IconPath.go, width: 28.r, height: 28.r),
            if (status == StudentNumberStatus.disable) ...[
              JustTheTooltip(
                controller: tooltipController,
                triggerMode: TooltipTriggerMode.manual,
                preferredDirection: AxisDirection.up,
                backgroundColor: AppColors.gray100,
                margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 3.h),
                shadow: Shadow(
                  color: AppColors.shadow.withValues(alpha: 0.25),
                  blurRadius: 24.r,
                  offset: Offset(0, 4.h),
                ),
                tailBaseWidth: 12.w,
                tailLength: 6.h,
                tailBuilder: (tip, point, rect) {
                  double radius = 0.5.r;
                  double tailWidth = 12.w;
                  double tailHeight = 6.h;
                  double shiftX = 42.w;

                  final path = Path();

                  path.moveTo(point.dx - tailWidth / 2 + shiftX, point.dy);
                  path.lineTo(point.dx + tailWidth / 2 + shiftX, point.dy);

                  path.lineTo(
                    point.dx + radius + shiftX,
                    point.dy + tailHeight - radius,
                  );
                  path.quadraticBezierTo(
                    point.dx + shiftX,
                    point.dy + tailHeight, // 곡선의 제어점
                    point.dx - radius + shiftX,
                    point.dy + tailHeight - radius,
                  );
                  path.close();

                  return path;
                },
                content: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                    vertical: 12.h,
                  ),
                  child: Text(
                    '연세대학교 미래캠퍼스 신입생은 기숙사 입주 시 멤버를 직접\n구성하여 신청할 수 없습니다. 2학기 때 다시 이용해주세요.',
                    style: context.textStyles.label1.copyWith(
                      color: AppColors.gray300,
                    ),
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    if (isShown.value) {
                      tooltipController.hideTooltip();
                    } else {
                      tooltipController.showTooltip();
                    }
                    isShown.value = !isShown.value;
                  },
                  child: Row(
                    children: [
                      Text(
                        '왜 선택할 수 없나요?',
                        style: context.textStyles.timeText.copyWith(
                          color: AppColors.gray200,
                        ),
                      ),
                      SizedBox(width: 2.w),
                      SvgPicture.asset(
                        IconPath.info,
                        width: 12.r,
                        height: 12.r,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
