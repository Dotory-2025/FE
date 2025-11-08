import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/constants/enums/routine.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/core/widgets/app_bars/app_bar_back.dart';
import 'package:dotori/feature/auth/presentation/viewmodels/routine_view_model.dart';
import 'package:dotori/feature/auth/presentation/viewmodels/states/routine_state.dart';
import 'package:dotori/feature/auth/presentation/widgets/toggles/routine_toggle.dart';
import 'package:dotori/feature/setting/data/models/my_info_response.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/edit_user_view_model.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/setting_view_model.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/states/setting_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EditRoutineScreen extends HookConsumerWidget {
  const EditRoutineScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final SettingState settingState = ref.watch(settingViewModelProvider);
    MyInfoResponse myInfoResponse = settingState.myInfo!;
    final RoutineState routineState = ref.watch(routineViewModelProvider);
    final RoutineViewModel routineViewModel = ref.read(
      routineViewModelProvider.notifier,
    );

    final isInitialized = useState(false);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        routineViewModel.applyRoutineCodes(myInfoResponse.routines);
        isInitialized.value = true;
      });
      return null;
    }, const []);

    final bool isButtonEnabled =
        isInitialized.value &&
        routineViewModel.isRoutineChanged(myInfoResponse.routines);

    return Scaffold(
      appBar: AppBarBack.backWithTextButtonGray(
        buttonText: '저장',
        onActionPressed: isButtonEnabled
            ? () async {
                await ref.read(editUserViewModelProvider.notifier).updateUser();
                if (!context.mounted) return;
                context.pop();
              }
            : null,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 32.h),
              Text(
                '생활 패턴 변경',
                style: context.textStyles.headLine1.copyWith(
                  color: AppColors.gray500,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                '오기입 시 정확한 피드백을 받기 어려울 수 있습니다.',
                style: context.textStyles.body1.copyWith(
                  color: AppColors.gray400,
                ),
              ),
              SizedBox(height: 26.h),
              Wrap(
                spacing: 8.w,
                runSpacing: 16.h,
                children: RoutineCategory.values.map((category) {
                  return RoutineToggle(category: category);
                }).toList(),
              ),
              SizedBox(height: 16.h),
            ],
          ),
        ),
      ),
    );
  }
}
