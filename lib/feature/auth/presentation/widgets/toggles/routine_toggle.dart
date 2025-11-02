import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/enums/routine.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/feature/auth/presentation/viewmodels/routine_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RoutineToggle extends HookConsumerWidget {
  final RoutineCategory category;

  const RoutineToggle({super.key, required this.category});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final ValueNotifier<bool> isSelected = useState(false);
    return InkWell(
      onTap: () {
        ref.read(routineViewModelProvider.notifier).toggle(category);
        isSelected.value = !isSelected.value;
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.5.w, vertical: 2.5.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.r),
          color: isSelected.value ? AppColors.primary : AppColors.background,
          border: Border.all(color: isSelected.value ? AppColors.primary : AppColors.gray200, width: 1.5.r),
        ),
        child: Text(
          category.label,
          style: context.textStyles.body2.copyWith(
            color: isSelected.value ? AppColors.background : AppColors.gray400,
          ),
        ),
      ),
    );
  }
}
