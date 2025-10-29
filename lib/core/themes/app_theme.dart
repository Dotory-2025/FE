import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData kThemeData = ThemeData(
    primaryColor: AppColors.primary,
    cardColor: AppColors.background,
    scaffoldBackgroundColor: AppColors.background,
    splashFactory: NoSplash.splashFactory,
    highlightColor: Colors.transparent,
    fontFamily: 'PretendardVariable',
    appBarTheme: kAppAppBarTheme,
    elevatedButtonTheme: kElevatedButtonThemeData,
    useMaterial3: true,
  );

  ///Appbar 테마
  static AppBarTheme kAppAppBarTheme = AppBarTheme(
    color: AppColors.gray100,
    scrolledUnderElevation: 0,
    titleSpacing: AppSizes.defaultPadding,
  );

  ///ElevatedButton 테마
  static ElevatedButtonThemeData kElevatedButtonThemeData =
  ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: Size.zero,
        padding: EdgeInsets.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        elevation: 0,
        overlayColor: Colors.transparent,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.radiusMD),
        ),
      ));

}
