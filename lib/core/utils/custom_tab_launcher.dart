import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/widgets/toasts/custom_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> launchCustomTab(BuildContext context, {
  required String url,
  required String title,
}) async {
  try {
    await launchUrl(
      Uri.parse(url),
      customTabsOptions: CustomTabsOptions(
        colorSchemes: CustomTabsColorSchemes.defaults(
          toolbarColor: AppColors.background,
        ),
        urlBarHidingEnabled: true,
      ),
      safariVCOptions: const SafariViewControllerOptions(
        preferredBarTintColor: AppColors.background,
        preferredControlTintColor: AppColors.primary,
        barCollapsingEnabled: true,
        entersReaderIfAvailable: false,
        dismissButtonStyle: SafariViewControllerDismissButtonStyle.close,
      ),
    );
  } catch (e) {
    CustomToast.showToast(context, '브라우저를 열 수 없습니다', 92.h);
  }
}