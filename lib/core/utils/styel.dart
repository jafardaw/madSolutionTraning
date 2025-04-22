import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  static TextStyle headline = TextStyle(
    fontSize: 26.0.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    shadows: [
      Shadow(blurRadius: 10.0, color: Colors.blueAccent, offset: Offset(0, 0)),
    ],
  );

  static TextStyle shimmerText = TextStyle(
    fontSize: 19.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    shadows: [
      Shadow(blurRadius: 10.0, color: Colors.blueAccent, offset: Offset(0, 0)),
    ],
  );
  static TextStyle subText = TextStyle(
    fontSize: 14.sp,
    color: Colors.grey[300],
    fontWeight: FontWeight.w400,
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
