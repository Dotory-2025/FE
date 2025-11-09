import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/constants/paths/route_path.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/core/widgets/app_bars/app_bar_back.dart';
import 'package:dotori/core/widgets/buttons/custom_elevated_button.dart';
import 'package:dotori/feature/auth/presentation/widgets/indicataors/custom_percent_indicator.dart';
import 'package:dotori/feature/auth/presentation/widgets/text_fields/auth_code_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class AuthCodeScreen extends HookWidget {
  const AuthCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController =
        useTextEditingController();

    final ValueNotifier<bool> isFilled = useState(false);

    useEffect(() {
      void listener() {
        isFilled.value = textEditingController.text.length == 6;
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
                  percent: 2 / 4,
                  height: 2.h,
                  borderRadius: 2.r,
                ),
                SizedBox(height: 42.h),
                Text(
                  '인증번호',
                  style: context.textStyles.headLine1.copyWith(
                    color: AppColors.gray500,
                  ),
                ),
                SizedBox(height: 4.h),
                RichText(
                  text: TextSpan(
                    children: [
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
                        text: '로 도착한 ',
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
                        text: '인증번호',
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
                        text: '를 입력해주세요.',
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
                Row(
                  children: [
                    Expanded(
                      child: AuthCodeTextFormField(
                        textEditingController: textEditingController,
                      ),
                    ),
                    TextButton(
                      onPressed: !isFilled.value
                          ? () {
                              /// --- 🧱 재전송 로직
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
                      child: Text('재전송', style: context.textStyles.btnText),
                    ),
                    SizedBox(width: 4.w,),
                  ],
                ),
                Spacer(),
                CustomElevatedButton.primary(
                  text: '인증하기',
                  height: 60.h,
                  width: double.infinity,
                  onPressed: isFilled.value
                      ? () {
                          context.pushReplacement(RoutePath.authInfo);
                        }
                      : null,
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
