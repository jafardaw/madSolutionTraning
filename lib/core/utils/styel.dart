import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madsolutionproject/core/constant.dart';

class AppTextStyles {
  static TextStyle calibri26NormalWhiteShadow = TextStyle(
    fontFamily: 'Calibri',
    fontSize: 26.0.sp,
    fontWeight: FontWeight.normal,
    color: Colors.white,
    shadows: [
      Shadow(blurRadius: 10.0, color: Colors.blueAccent, offset: Offset(0, 0)),
    ],
  );

  static TextStyle calibri19NormalWhiteShadow = TextStyle(
    fontFamily: 'Calibri',
    fontSize: 19.sp,
    fontWeight: FontWeight.normal,
    color: Colors.white,
    shadows: [
      Shadow(blurRadius: 10.0, color: Colors.blueAccent, offset: Offset(0, 0)),
    ],
  );

  static TextStyle calibri14RegularGrey300 = TextStyle(
    fontFamily: 'Calibri',
    fontSize: 14.sp,
    color: Colors.grey[300],
    fontWeight: FontWeight.w400,
  );

  static TextStyle calibri16BoldWhite = TextStyle(
    fontFamily: 'Calibri',
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static TextStyle calibri14BoldBlueAccentUnderline = TextStyle(
    fontFamily: 'Calibri',
    fontSize: 14.sp,
    fontWeight: FontWeight.bold,
    color: Colors.blueAccent,
    decoration: TextDecoration.underline,
  );

  static TextStyle calibri15MediumGrey800 = TextStyle(
    fontFamily: 'Calibri',
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
    color: Colors.grey[800],
  );

  static TextStyle calibri18RegularWhite = TextStyle(
    fontFamily: 'Calibri',
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    color: colorWhite,
  );

  static TextStyle calibri13ItalicGrey600 = TextStyle(
    fontFamily: 'Calibri',
    fontSize: 13.sp,
    fontStyle: FontStyle.italic,
    color: Colors.grey[600],
  );
}

///////////////////////////////////////////////
class AppAnimations {
  static final fadeSlide = [
    FadeEffect(duration: 600.ms),
    SlideEffect(begin: const Offset(-1, 0), duration: 800.ms),
  ];
  static ScaleEffect pulsing({Duration? delay}) => ScaleEffect(
    begin: const Offset(0.95, 0.95),
    end: const Offset(1.05, 1.05),
    duration: 1.5.seconds,
    curve: Curves.easeInOut,
    delay: delay ?? Duration.zero,
  );
}

class AppDurations {
  static const fast = Duration(milliseconds: 300);
  static const normal = Duration(milliseconds: 800);
  static const delayed = Duration(seconds: 3);
}
