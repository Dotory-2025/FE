import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:flutter/material.dart';

enum CustomElevatedButtonType {
  primary,
  secondary,
}

class CustomElevatedButton extends StatelessWidget {
  final CustomElevatedButtonType customElevatedButtonType;
  final double height;
  final double width;
  final String text;
  final VoidCallback? onPressed;
  final TextStyle textStyle;
  final double radius;

  const CustomElevatedButton(
      {super.key,
        required this.height,
        required this.width,
        required this.text,
        required this.onPressed,
        required this.textStyle,
        required this.radius,
        this.customElevatedButtonType = CustomElevatedButtonType.primary});

  factory CustomElevatedButton.primary({
    required String text,
    required double height,
    required double width,
    required VoidCallback? onPressed,
    required TextStyle textStyle,
    required double radius
  }) =>
      CustomElevatedButton(
        text: text,
        height: height,
        width: width,
        onPressed: onPressed,
        textStyle: textStyle,
        radius: radius,
        customElevatedButtonType: CustomElevatedButtonType.primary,
      );

  factory CustomElevatedButton.secondary({
    required String text,
    required double height,
    required double width,
    required VoidCallback? onPressed,
    required TextStyle textStyle,
    required double radius
  }) =>
      CustomElevatedButton(
        text: text,
        height: height,
        width: width,
        onPressed: onPressed,
        textStyle: textStyle,
        radius: radius,
        customElevatedButtonType: CustomElevatedButtonType.secondary,
      );

  static WidgetStateProperty<Color?> _getBackgroundColor(
      Color enabledColor, disabledColor) {
    return WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return disabledColor;
      }
      return enabledColor;
    });
  }

  static WidgetStateProperty<Color?> _getForegroundColor(
      Color enabledColor, disabledColor) {
    return WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return disabledColor;
      }
      return enabledColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor =
    customElevatedButtonType == CustomElevatedButtonType.primary
        ? AppColors.primary
        : AppColors.gray200;
    final foregroundColor =
    customElevatedButtonType == CustomElevatedButtonType.primary
        ? AppColors.background
        : AppColors.background;

    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
          style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
            backgroundColor:
            _getBackgroundColor(backgroundColor, AppColors.gray100),
            foregroundColor:
            _getForegroundColor(foregroundColor, AppColors.gray200),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius), // 원하는 radius 값
              ),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: context.textStyles.btnText,
          )),
    );
  }
}
