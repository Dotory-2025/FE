import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthCodeTextFormField extends StatelessWidget {
  final TextEditingController textEditingController;

  const AuthCodeTextFormField({super.key, required this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      autofocus: true,
      cursorColor: AppColors.gray500,
      cursorWidth: 2.w,
      cursorRadius: Radius.circular(1.r),
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
      style: context.textStyles.headLine1.copyWith(color: AppColors.gray500),
      maxLength: 6,
      decoration: InputDecoration(
        counterText: '',
        isCollapsed: true,
        isDense: true,
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        contentPadding: EdgeInsets.only(
          left: 4.w,
          right: 8.w,
          top: 0,
          bottom: 0,
        ),
        hintText: '인증번호',
        hintStyle: context.textStyles.headLine1.copyWith(
          color: AppColors.gray200,
        ),
        filled: true,
        fillColor: AppColors.background,
      ),
    );
  }
}
