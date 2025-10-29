import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/constants/icon_path.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomSearchBar extends HookWidget {
  final TextEditingController controller;

  const CustomSearchBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final FocusNode focusNode = useFocusNode();

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        focusNode.requestFocus();
      });
      return null;
    }, []);

    final bool isTyping = useListenableSelector<bool>(
      controller,
          () => controller.text.isNotEmpty,
    );

    return TextField(
      controller: controller,
      focusNode: focusNode,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.search,
      style: context.textStyles.body1.copyWith(color: AppColors.gray400),
      cursorColor: AppColors.gray500,
      cursorRadius: Radius.circular(1.r),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: 10.h,
          horizontal: 0,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(AppSizes.radiusSM),
        ),
        hintText: '검색어를 입력해주세요.',
        hintStyle: context.textStyles.body1.copyWith(color: AppColors.gray200),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(AppSizes.radiusSM),
        ),
        filled: true,
        fillColor: AppColors.gray100,
        isDense: true,
        prefixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: 12.w,),
            SvgPicture.asset(
              IconPath.searchSearchBar,
              width: 24.r,
              height: 24.r,
            ),
            SizedBox(width: 4.w,),
          ],
        ),
        prefixIconConstraints: BoxConstraints(minWidth: 24.r, minHeight: 24.r),
        suffixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: 4.w,),
            IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              onPressed: () {
                if (isTyping) {
                  controller.clear();
                }
              },
              icon: isTyping
                  ? SvgPicture.asset(IconPath.cancelSearchBar, width: 16.r)
                  : SizedBox.shrink(),
            ),
            SizedBox(width: AppSizes.defaultPadding),
          ],
        ),
        suffixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
      ),
    );
  }
}
