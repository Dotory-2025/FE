import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension AppTextStyles on TextTheme {
  /// HeadLine
  TextStyle get headLine1 => TextStyle(
    letterSpacing: (32.sp * -0.40 / 100).w,
    height: 48 / 32,
    fontSize: 32.sp,
    fontVariations: const <FontVariation>[
      FontVariation('wght', 700),
    ],
  );

  TextStyle get subHeadline1 => TextStyle(
    letterSpacing: (24.sp * -0.20 / 100).w,
    height: 36 / 24,
    fontSize: 24.sp,
    fontVariations: const <FontVariation>[
      FontVariation('wght', 700),
    ],
  );

  TextStyle get subHeadline2 => TextStyle(
    letterSpacing: (18.sp * -0.25 / 100).w,
    height: 28 / 18,
    fontSize: 18.sp,
    fontVariations: const <FontVariation>[
      FontVariation('wght', 600),
    ],
  );

  TextStyle get sectionHeadline1 => TextStyle(
    letterSpacing: (20.sp * -0.10 / 100).w,
    height: 36 / 20,
    fontSize: 20.sp,
    fontVariations: const <FontVariation>[
      FontVariation('wght', 700),
    ],
  );

  /// BtnText
  TextStyle get btnText => TextStyle(
    letterSpacing: (20.sp * 0.20 / 100).w,
    height: 28 / 16,
    fontSize: 16.sp,
    fontVariations: const <FontVariation>[
      FontVariation('wght', 600),
    ],
  );

  /// Body
  TextStyle get body1 => TextStyle(
    letterSpacing: (16.sp * -0.25 / 100).w,
    fontSize: 16.sp,
    height: 24 / 16,
    fontVariations: const <FontVariation>[
      FontVariation('wght', 500),
    ],
  );

  TextStyle get body2 => TextStyle(
    letterSpacing: (14.sp * 0.25 / 100).w,
    height: 24 / 14,
    fontSize: 14.sp,
    fontVariations: const <FontVariation>[
      FontVariation('wght', 600),
    ],
  );

  TextStyle get body3 => TextStyle(
    letterSpacing: (14.sp * 0.25 / 100).w,
    height: 24 / 14,
    fontSize: 14.sp,
    fontVariations: const <FontVariation>[
      FontVariation('wght', 500),
    ],
  );

  TextStyle get body4 => TextStyle(
    letterSpacing: (14.sp * 0.25 / 100).w,
    height: 26 / 14,
    fontSize: 14.sp,
    fontVariations: const <FontVariation>[
      FontVariation('wght', 400),
    ],
  );

  /// Label
  TextStyle get label1 => TextStyle(
    letterSpacing: (12.sp * 0.40 / 100).w,
    fontSize: 12.sp,
    height: 18 / 12,
    fontVariations: const <FontVariation>[
      FontVariation('wght', 600),
    ],
  );

  TextStyle get label2 => TextStyle(
    letterSpacing: (10.sp * 0.40 / 100).w,
    fontSize: 10.sp,
    height: 12 / 10,
    fontVariations: const <FontVariation>[
      FontVariation('wght', 600),
    ],
  );

  /// Caption
  TextStyle get caption1 => TextStyle(
    letterSpacing: (12.sp * 0.20 / 100).w,
    height: 20 / 12,
    fontSize: 12.sp,
    fontVariations: const <FontVariation>[
      FontVariation('wght', 400),
    ],
  );

  /// TimeText
  TextStyle get timeText => TextStyle(
    letterSpacing: 0,
    height: 18 / 10,
    fontSize: 10.sp,
    fontVariations: const <FontVariation>[
      FontVariation('wght', 500),
    ],
  );
}
