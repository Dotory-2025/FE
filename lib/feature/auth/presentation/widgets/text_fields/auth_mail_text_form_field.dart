import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthMailTextFormField extends HookWidget {
  final TextEditingController textEditingController;

  const AuthMailTextFormField({super.key, required this.textEditingController});

  @override
  Widget build(BuildContext context) {
    const suffix = '@yonsei.ac.kr';

    useEffect(() {
      void listener() {
        final String userText = textEditingController.text.replaceAll(suffix, '');
        final String currentText = textEditingController.text;
        final int currentSelectionOffset = textEditingController.selection.baseOffset;

        if (userText.isNotEmpty) {
          if (!currentText.endsWith(suffix)) {
            textEditingController.value = TextEditingValue(
              text: '$userText$suffix',
              selection: TextSelection.collapsed(
                offset: userText.length,
              ),
            );
            return;
          }
        } else {
          if (currentText.isNotEmpty) {
            textEditingController.value = TextEditingValue(
              text: '',
              selection: TextSelection.collapsed(offset: 0),
            );
            return;
          }
        }

        if (userText.isNotEmpty) {
          final maxOffset = userText.length;

          if (currentSelectionOffset > maxOffset) {
            textEditingController.selection = TextSelection.collapsed(
              offset: maxOffset,
            );
          }
        }
      }

      textEditingController.addListener(listener);

      return () => textEditingController.removeListener(listener);
    }, [textEditingController]);


    return TextField(
      controller: textEditingController,
      autofocus: true,
      cursorColor: AppColors.gray500,
      cursorWidth: 2.w,
      cursorRadius: Radius.circular(1.r),
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.done,
      style: context.textStyles.headLine1.copyWith(
          color: AppColors.gray500,),
      maxLength: 64,
      decoration: InputDecoration(
        counterText: '',
        isCollapsed: true,
        isDense: true,
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        contentPadding: EdgeInsets.symmetric(horizontal: 4.w),
        hintText: 'dotori@yonsei.ac.kr',
        hintStyle: context.textStyles.headLine1.copyWith(
          color: AppColors.gray200,
        ),
        filled: true,
        fillColor: AppColors.background,
      ),
    );
  }
}