import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get kThemeData => ThemeData(
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
    bottomSheetTheme: kBottomSheetThemeData,
    useMaterial3: true,
  );

  /// --- Appbar 테마
  static AppBarTheme get kAppAppBarTheme => AppBarTheme(
    color: AppColors.background,
    scrolledUnderElevation: 0,
    titleSpacing: AppSizes.defaultPadding,
  );

  /// --- ElevatedButton 테마
  static ElevatedButtonThemeData get kElevatedButtonThemeData =>
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

  /// --- TextButton 테마
  static TextButtonThemeData get kTextButtonThemeData => TextButtonThemeData(
    style: TextButton.styleFrom(
      minimumSize: Size.zero,
      padding: EdgeInsets.zero,
      overlayColor: Colors.transparent,
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    ),
  );

  /// --- IconButton 테마
  static IconButtonThemeData get kIconButtonThemeData => IconButtonThemeData(
    style: ButtonStyle(
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      padding: const WidgetStatePropertyAll(EdgeInsets.zero),
      overlayColor:
      const WidgetStatePropertyAll(Colors.transparent),
    ),
  );

  /// --- BottomSheet 테마
  static BottomSheetThemeData get kBottomSheetThemeData => BottomSheetThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(AppSizes.radiusMD),
      ),
    ),
    backgroundColor: AppColors.background,
  );
}
