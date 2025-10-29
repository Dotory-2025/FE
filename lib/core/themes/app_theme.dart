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
    textButtonTheme: kTextButtonThemeData,
    iconButtonTheme: kIconButtonThemeData,
    useMaterial3: true,
  );

  ///Appbar 테마
  static AppBarTheme kAppAppBarTheme = AppBarTheme(
    color: AppColors.background,
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
        ),
      );

  ///TextButton 테마
  static TextButtonThemeData kTextButtonThemeData = TextButtonThemeData(
    style: TextButton.styleFrom(
      minimumSize: Size.zero,
      padding: EdgeInsets.zero,
      overlayColor: Colors.transparent,
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    ),
  );

  ///IconButton 테마
  static IconButtonThemeData kIconButtonThemeData = IconButtonThemeData(
    style: ButtonStyle(
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      padding: WidgetStatePropertyAll(EdgeInsets.zero),
      overlayColor: WidgetStatePropertyAll(Colors.transparent),
    ),
  );
}
