import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthNicknameTextFormField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String? hintText;

  const AuthNicknameTextFormField({super.key, required this.textEditingController, this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      cursorColor: AppColors.gray500,
      cursorWidth: 2.w,
      cursorRadius: Radius.circular(1.r),
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.done,
      style: context.textStyles.headLine1.copyWith(color: AppColors.gray500),
      maxLength: 20,
      decoration: InputDecoration(
        counterText: '',
        isCollapsed: true,
        isDense: true,
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        contentPadding: EdgeInsets.symmetric(horizontal: 4.w),
        hintText: hintText ?? '도토리',
        hintStyle: context.textStyles.headLine1.copyWith(
          color: AppColors.gray200,
        ),
        filled: true,
        fillColor: AppColors.background,
      ),
    );
  }
}
