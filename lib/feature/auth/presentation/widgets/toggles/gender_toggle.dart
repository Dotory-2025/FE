import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/feature/auth/presentation/viewmodels/auth_view_model.dart';
import 'package:dotori/feature/auth/presentation/viewmodels/states/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum Gender { male, female }

class GenderToggle extends ConsumerWidget {
  const GenderToggle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //final ValueNotifier<String?> gender = useState<String?>(null);
    final AuthState authState = ref.watch(authViewModelProvider);
    final bool isMale = authState.gender == Gender.male.name;
    final bool isFemale = authState.gender == Gender.female.name;

    return Row(
      children: [
        InkWell(
          onTap: () {
            ref
                .read(authViewModelProvider.notifier)
                .setGender(Gender.male.name);
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.5.w, vertical: 2.5.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.r),
              color: isMale ? AppColors.primary : AppColors.background,
              border: Border.all(
                color: isMale ? AppColors.primary : AppColors.gray200,
                width: 1.5.r,
              ),
            ),
            child: Text(
              '남성',
              style: context.textStyles.body3.copyWith(
                color: isMale ? AppColors.background : AppColors.gray400,
              ),
            ),
          ),
        ),
        SizedBox(width: 14.w),
        InkWell(
          onTap: () {
            ref
                .read(authViewModelProvider.notifier)
                .setGender(Gender.female.name);
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.5.w, vertical: 2.5.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.r),
              color: isFemale ? AppColors.primary : AppColors.background,
              border: Border.all(
                color: isFemale ? AppColors.primary : AppColors.gray200,
                width: 1.5.r,
              ),
            ),
            child: Text(
              '여성',
              style: context.textStyles.body3.copyWith(
                color: isFemale ? AppColors.background : AppColors.gray400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
