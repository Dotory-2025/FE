import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/enums/routine.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/feature/auth/presentation/viewmodels/routine_view_model.dart';
import 'package:dotori/feature/auth/presentation/viewmodels/states/routine_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RoutineToggle extends ConsumerWidget {
  final RoutineCategory category;

  const RoutineToggle({super.key, required this.category});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final RoutineState routineState = ref.watch(routineViewModelProvider);
    final RoutineViewModel routineViewModel = ref.read(routineViewModelProvider.notifier);

    final bool isSelected = switch (category) {
      RoutineCategory.smoking => routineState.smoking == Smoking.smoker,
      RoutineCategory.snoring => routineState.snoring == Snoring.snorer,
      RoutineCategory.nightWork => routineState.nightWork == NightWork.nightShift,
      RoutineCategory.homebody => routineState.homebody == Homebody.homebody,
      RoutineCategory.morningShower => routineState.morningShower == MorningShower.morningShower,
      RoutineCategory.shareItems => routineState.shareItems == ShareItems.sharing,
      RoutineCategory.callInDorm => routineState.callInDorm == CallInDorm.callsAllowed,
      RoutineCategory.eatInDorm => routineState.eatInDorm == EatInDorm.eatingAllowed,
      RoutineCategory.personality => routineState.personality == Personality.extrovert,
      RoutineCategory.cleaning => routineState.cleaning == Cleaning.sensitive,
      RoutineCategory.sleepPattern => routineState.sleepPattern == SleepPattern.regularSleep,
      RoutineCategory.drinking => routineState.drinking == Drinking.drinksOften,
    };

    return InkWell(
      onTap: () => routineViewModel.toggle(category),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.5.w, vertical: 2.5.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.r),
          color: isSelected ? AppColors.primary : AppColors.background,
          border: Border.all(
            color: isSelected ? AppColors.primary : AppColors.gray200,
            width: 1.5.r,
          ),
        ),
        child: Text(
          category.label,
          style: context.textStyles.body2.copyWith(
            color: isSelected ? AppColors.background : AppColors.gray400,
          ),
        ),
      ),
    );
  }
}