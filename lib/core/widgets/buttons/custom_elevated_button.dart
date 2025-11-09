import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:flutter/material.dart';

enum CustomElevatedButtonType { primary, secondary }

class CustomElevatedButton extends StatelessWidget {
  final CustomElevatedButtonType customElevatedButtonType;
  final double? height;
  final double? width;
  final String text;
  final VoidCallback? onPressed;
  final TextStyle textStyle;
  final double radius;
  final EdgeInsetsGeometry padding;

  const CustomElevatedButton({
    super.key,
    this.height,
    this.width,
    required this.text,
    required this.onPressed,
    required this.textStyle,
    required this.radius,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    this.customElevatedButtonType = CustomElevatedButtonType.primary,
  });

  factory CustomElevatedButton.primary({
    required String text,
    VoidCallback? onPressed,
    TextStyle? textStyle,
    double radius = 8,
    double? height,
    double? width,
    EdgeInsetsGeometry padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
  }) =>
      CustomElevatedButton(
        text: text,
        onPressed: onPressed,
        textStyle: textStyle ?? const TextStyle(),
        radius: radius,
        height: height,
        width: width,
        padding: padding,
        customElevatedButtonType: CustomElevatedButtonType.primary,
      );

  factory CustomElevatedButton.secondary({
    required String text,
    VoidCallback? onPressed,
    TextStyle? textStyle,
    double radius = 8,
    double? height,
    double? width,
    EdgeInsetsGeometry padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
  }) =>
      CustomElevatedButton(
        text: text,
        onPressed: onPressed,
        textStyle: textStyle ?? const TextStyle(),
        radius: radius,
        height: height,
        width: width,
        padding: padding,
        customElevatedButtonType: CustomElevatedButtonType.secondary,
      );

  static WidgetStateProperty<Color?> _getBackgroundColor(
      Color enabledColor, Color disabledColor) {
    return WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) return disabledColor;
      return enabledColor;
    });
  }

  static WidgetStateProperty<Color?> _getForegroundColor(
      Color enabledColor, Color disabledColor) {
    return WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) return disabledColor;
      return enabledColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor = customElevatedButtonType == CustomElevatedButtonType.primary
        ? AppColors.primary
        : AppColors.gray200;

    final disabledBackgroundColor = AppColors.gray100;
    final foregroundColor = AppColors.background;
    final disabledForegroundColor = AppColors.gray200;

    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          disabledBackgroundColor: disabledBackgroundColor,
          foregroundColor: foregroundColor,
          disabledForegroundColor: disabledForegroundColor,
          padding: padding,
          minimumSize: Size.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        child: Text(text, style: textStyle),
      ),
    );
  }
}
