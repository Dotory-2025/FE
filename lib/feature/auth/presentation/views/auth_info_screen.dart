import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/constants/paths/route_path.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/core/widgets/app_bars/app_bar_back.dart';
import 'package:dotori/core/widgets/buttons/custom_elevated_button.dart';
import 'package:dotori/feature/auth/presentation/viewmodels/auth_view_model.dart';
import 'package:dotori/feature/auth/presentation/viewmodels/states/auth_state.dart';
import 'package:dotori/feature/auth/presentation/widgets/buttons/custom_dropdown_button.dart';
import 'package:dotori/feature/auth/presentation/widgets/indicataors/custom_percent_indicator.dart';
import 'package:dotori/feature/auth/presentation/widgets/modal_bottom_sheets/dormitory_modal.dart';
import 'package:dotori/feature/auth/presentation/widgets/modal_bottom_sheets/student_number_modal.dart';
import 'package:dotori/feature/auth/presentation/widgets/text_fields/auth_nickname_text_form_field.dart';
import 'package:dotori/feature/auth/presentation/widgets/toggles/gender_toggle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthInfoScreen extends HookConsumerWidget {
  const AuthInfoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController textEditingController =
        useTextEditingController();

    final ValueNotifier<bool> isFilled = useState(false);
    final ValueNotifier<bool> isCheckNickname = useState(false);

    final AuthState authState = ref.watch(authViewModelProvider);

    final bool isStudentNumberSelected = authState.studentNumber != null;
    final String studentNumber = isStudentNumberSelected
        ? '${authState.studentNumber?.toString()} 학번'
        : '학번을 선택해주세요.';

    final bool isDormitorySelected = authState.dormitory != null;

    /// --- 🧱 API 리스폰스 나오면 로직 변경
    final bool isDuplication = false;
    final String domitory = authState.dormitory?.toString() ?? '선호학사를 선택해주세요.';

    useEffect(() {
      String previousText = textEditingController.text;

      void listener() {
        final currentText = textEditingController.text;

        if (currentText != previousText) {
          isFilled.value = currentText.length >= 3;
          isCheckNickname.value = false;
          ref.read(authViewModelProvider.notifier).setNickname(null);

          previousText = currentText;
        }
      }

      textEditingController.addListener(listener);
      return () => textEditingController.removeListener(listener);
    }, [textEditingController]);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarBack.back(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomPercentIndicatioer(
                percent: 3 / 4,
                height: 2.h,
                borderRadius: 2.r,
              ),
              SizedBox(height: 42.h),
              Text(
                '프로필 설정',
                style: context.textStyles.headLine1.copyWith(
                  color: AppColors.gray500,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                '다른 사용자가 회원님을 알 수 있도록 설정해주세요!',
                style: context.textStyles.body1.copyWith(
                  color: AppColors.gray400,
                ),
              ),
              SizedBox(height: 62.h),
              Text(
                '닉네임',
                style: context.textStyles.body1.copyWith(
                  color: AppColors.gray500,
                ),
              ),
              SizedBox(height: 4.h),
              Row(
                children: [
                  Expanded(
                    child: AuthNicknameTextFormField(
                      textEditingController: textEditingController,
                    ),
                  ),
                  TextButton(
                    onPressed: isFilled.value && !isCheckNickname.value
                        ? () {
                            /// --- 🧱 중복확인 로직
                            isCheckNickname.value = true;
                            ref
                                .read(authViewModelProvider.notifier)
                                .setNickname(textEditingController.text);
                          }
                        : null,
                    style: ButtonStyle(
                      foregroundColor: WidgetStateProperty.resolveWith<Color>((
                        states,
                      ) {
                        if (states.contains(WidgetState.disabled)) {
                          return AppColors.gray200;
                        }
                        return AppColors.gray500;
                      }),
                    ),
                    child: Text('중복확인', style: context.textStyles.btnText),
                  ),
                  SizedBox(width: 4.w),
                ],
              ),
              SizedBox(height: 4.h),
              Visibility(
                visible: isCheckNickname.value ? true : false,
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                child: Padding(
                  padding: EdgeInsets.only(left: 4.w),
                  child: Text(
                    isDuplication ? '중복된 닉네임 입니다.' : '사용 가능한 닉네임입니다.',
                    style: context.textStyles.body3.copyWith(
                      color: isDuplication
                          ? AppColors.error
                          : AppColors.green200,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 32.h),
              Text(
                '학번 선택',
                style: context.textStyles.body1.copyWith(
                  color: AppColors.gray500,
                ),
              ),
              SizedBox(height: 6.h),
              CustomDropdownButton(
                title: studentNumber,
                textColor: isStudentNumberSelected
                    ? AppColors.gray500
                    : AppColors.gray200,
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) => StudentNumberModal(),
                  );
                },
              ),
              SizedBox(height: 32.h),
              Text(
                '선호학사 선택',
                style: context.textStyles.body1.copyWith(
                  color: AppColors.gray500,
                ),
              ),
              SizedBox(height: 6.h),
              CustomDropdownButton(
                title: domitory,
                textColor: isDormitorySelected
                    ? AppColors.gray500
                    : AppColors.gray200,
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) => DormitoryModal(),
                  );
                },
              ),
              SizedBox(height: 32.h),
              Text(
                '성별',
                style: context.textStyles.body1.copyWith(
                  color: AppColors.gray500,
                ),
              ),
              SizedBox(height: 12.h),
              GenderToggle(),
              Spacer(),
              CustomElevatedButton.primary(
                text: '작성완료',
                height: 60.h,
                width: double.infinity,
                onPressed:
                    ref.read(authViewModelProvider.notifier).isInfoFilled() &&
                        !isDuplication
                    ? () {
                        context.push(RoutePath.authRoutine);
                      }
                    : null,
                textStyle: context.textStyles.btnText,
                radius: AppSizes.radiusMD,
              ),
              SizedBox(height: 16.h),
            ],
          ),
        ),
      ),
    );
  }
}
