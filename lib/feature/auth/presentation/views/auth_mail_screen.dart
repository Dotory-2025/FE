import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/constants/paths/route_path.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/core/widgets/app_bars/app_bar_back.dart';
import 'package:dotori/core/widgets/buttons/custom_elevated_button.dart';
import 'package:dotori/feature/auth/presentation/viewmodels/auth_view_model.dart';
import 'package:dotori/feature/auth/presentation/widgets/indicataors/custom_percent_indicator.dart';
import 'package:dotori/feature/auth/presentation/widgets/text_fields/auth_mail_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthMailScreen extends HookConsumerWidget {
  const AuthMailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController textEditingController = useTextEditingController();
    final ValueNotifier<bool> isFilled = useState(false);
    final AuthViewModel authNotifier = ref.read(authViewModelProvider.notifier);

    useEffect(() {
      void listener() {
        isFilled.value = textEditingController.text.trim().isNotEmpty;
      }

      textEditingController.addListener(listener);
      return () => textEditingController.removeListener(listener);
    }, [textEditingController]);

    return Scaffold(
      appBar: AppBarBack.back(),
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          behavior: HitTestBehavior.translucent,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomPercentIndicatioer(
                  percent: 1 / 4,
                  height: 2.h,
                  borderRadius: 2.r,
                ),
                SizedBox(height: 42.h),
                Text(
                  '학교 인증',
                  style: context.textStyles.headLine1.copyWith(
                    color: AppColors.gray500,
                  ),
                ),
                SizedBox(height: 4.h),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '학생 인증을 위해 ',
                        style: context.textStyles.body1.copyWith(
                          letterSpacing: (16.sp * -0.25 / 100).w,
                          fontSize: 16.sp,
                          height: 24 / 16,
                          color: AppColors.gray400,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'PretendardVariable',
                        ),
                      ),
                      TextSpan(
                        text: '연세메일',
                        style: context.textStyles.body1.copyWith(
                          letterSpacing: (16.sp * -0.25 / 100).w,
                          fontSize: 16.sp,
                          height: 24 / 16,
                          color: AppColors.gray500,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'PretendardVariable',
                        ),
                      ),
                      TextSpan(
                        text: '을 사용해주세요!',
                        style: context.textStyles.body1.copyWith(
                          letterSpacing: (16.sp * -0.25 / 100).w,
                          fontSize: 16.sp,
                          height: 24 / 16,
                          color: AppColors.gray400,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'PretendardVariable',

                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 72.h),
                AuthMailTextFormField(
                  textEditingController: textEditingController,
                ),
                Spacer(),
                CustomElevatedButton.primary(
                  text: '메일 전송하기',
                  height: 60.h,
                  width: double.infinity,
                  onPressed: isFilled.value ? () {
                    authNotifier.setEmail(textEditingController.text);
                    print(textEditingController.text);
                    /// --- 🧱 메일 전송 로직
                    context.push(RoutePath.authCode);
                  } : null,
                  textStyle: context.textStyles.btnText,
                  radius: AppSizes.radiusMD,
                ),
                SizedBox(height: AppSizes.bottomPadding),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
