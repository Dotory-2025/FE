import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData kThemeData = ThemeData(
    primaryColor: AppColors.primary,
    cardColor: AppColors.gray100,
    scaffoldBackgroundColor: AppColors.gray100,
    splashFactory: NoSplash.splashFactory,
    highlightColor: Colors.transparent,

    ///textTheme: textTheme,
    fontFamily: 'PretendardVariable',
    appBarTheme: kAppAppBarTheme,
    useMaterial3: true,
  );

  ///Appbar 테마
  static AppBarTheme kAppAppBarTheme = AppBarTheme(
    color: AppColors.gray100,
    scrolledUnderElevation: 0,
    titleSpacing: AppSizes.defaultPadding,
  );
}
