import 'package:dotori/core/constants/paths/icon_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCheckbox extends StatelessWidget {
  final bool isChecked;
  final ValueChanged<bool> onChanged;
  final double iconSize;

  const CustomCheckbox({
    super.key,
    required this.isChecked,
    required this.onChanged,
    required this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => onChanged(!isChecked),
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(),
      icon: SvgPicture.asset(
        isChecked
            ? IconPath.checkBoxOn
            : IconPath.checkBoxOff,
        width: iconSize,
        height: iconSize,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
