import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/constants/paths/route_path.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/core/widgets/app_bars/app_bar_back.dart';
import 'package:dotori/core/widgets/app_bars/app_bar_logo.dart';
import 'package:dotori/core/widgets/buttons/custom_elevated_button.dart';
import 'package:dotori/feature/auth/presentation/viewmodels/auth_view_model.dart';
import 'package:dotori/feature/auth/presentation/widgets/list_tiles/terms_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TermsAgreementScreen extends HookConsumerWidget {
  const TermsAgreementScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ValueNotifier<bool> isAgreeAll = useState(false);
    final ValueNotifier<bool> isAgreeTerms = useState(false);
    final ValueNotifier<bool> isAgreePrivacyPolicy = useState(false);
    final ValueNotifier<bool> isAgreeThirdParty = useState(false);
    final ValueNotifier<bool> isAgreeMarketing = useState(false);

    void toggleAgreeAll() {
      final bool newValue = !isAgreeAll.value;
      isAgreeAll.value = newValue;
      isAgreeTerms.value = newValue;
      isAgreePrivacyPolicy.value = newValue;
      isAgreeThirdParty.value = newValue;
      isAgreeMarketing.value = newValue;
    }

    void updateAgreeAllState() {
      isAgreeAll.value =
          isAgreeTerms.value &&
          isAgreePrivacyPolicy.value &&
          isAgreeThirdParty.value &&
          isAgreeMarketing.value;
    }

    return Scaffold(
      appBar: AppBarBack.back(),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 44.h),
              Text(
                '만나서 반가워요 :)',
                style: context.textStyles.headLine1.copyWith(
                  color: AppColors.gray500,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                '도토리 가입약관을 반드시 확인해주세요!',
                style: context.textStyles.body1.copyWith(
                  color: AppColors.gray400,
                ),
              ),
              Spacer(),
              TermsListTile.all(
                isChecked: isAgreeAll.value,
                onChanged: (value) {
                  toggleAgreeAll();
                },
                title: '전체 동의',
              ),
              Divider(color: AppColors.gray100, height: 2.h, thickness: 2.h),
              TermsListTile.one(
                isChecked: isAgreeTerms.value,
                onChanged: (value) {
                  isAgreeTerms.value = value;
                  updateAgreeAllState();
                },
                title: '도토리 서비스 이용 동의 (필수)',
                url: 'https://www.google.com',
              ),
              TermsListTile.one(
                isChecked: isAgreePrivacyPolicy.value,
                onChanged: (value) {
                  isAgreePrivacyPolicy.value = value;
                  updateAgreeAllState();
                },
                title: '도토리 서비스 이용 동의 (필수)',
                url: 'https://www.google.com',
              ),
              TermsListTile.one(
                isChecked: isAgreeThirdParty.value,
                onChanged: (value) {
                  isAgreeThirdParty.value = value;
                  updateAgreeAllState();
                },
                title: '제 3자 제공 동의 (필수)',
                url: 'https://www.google.com',
              ),
              TermsListTile.one(
                isChecked: isAgreeMarketing.value,
                onChanged: (value) {
                  isAgreeMarketing.value = value;
                  updateAgreeAllState();
                },
                title: '광고 수신 동의 (선택)',
                url: 'https://www.google.com',
              ),
              SizedBox(height: 54.h),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.defaultPadding,
                ),
                child: CustomElevatedButton.primary(
                  text: '완료',
                  height: 60.h,
                  width: double.infinity,
                  onPressed:
                      (isAgreeTerms.value &&
                          isAgreePrivacyPolicy.value &&
                          isAgreeThirdParty.value)
                      ? () async {
                          await ref
                              .read(authViewModelProvider.notifier)
                              .signUp();
                          if(!context.mounted) return;
                          context.go(RoutePath.tutorial);
                        }
                      : null,
                  textStyle: context.textStyles.btnText,
                  radius: AppSizes.radiusMD,
                ),
              ),
              SizedBox(height: AppSizes.bottomPadding),
            ],
          ),
        ),
      ),
    );
  }
}
