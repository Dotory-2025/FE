import 'package:flutter/material.dart';

class ScreenService {
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width > 600;

  static Size getDesignSize(BuildContext context) {
    return isTablet(context)
        ? const Size(768, 1024)
        : const Size(393, 852);
  }
}
