import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle outfitBoldWhite(BuildContext context, {double? fontSize}) {
    return GoogleFonts.outfit(
      fontWeight: FontWeight.w700,
      color: Colors.white,
      fontSize: fontSize ?? 16.sp,
    );
  }

  static TextStyle outfitRegularWhite(
    BuildContext context, {
    double? fontSize,
  }) {
    return GoogleFonts.outfit(
      fontWeight: FontWeight.w400,
      color: Colors.white,
      fontSize: fontSize ?? 14.sp,
    );
  }

  static TextStyle outfitMediumWhite(BuildContext context, {double? fontSize}) {
    return GoogleFonts.outfit(
      fontWeight: FontWeight.w500,
      color: Colors.white,
      fontSize: fontSize ?? 15.sp,
    );
  }

  static TextStyle outfitSemiBoldWhite(
    BuildContext context, {
    double? fontSize,
  }) {
    return GoogleFonts.outfit(
      fontWeight: FontWeight.w600,
      color: Colors.white,
      fontSize: fontSize ?? 16.sp,
    );
  }

  static TextStyle headingLarge(BuildContext context) {
    return GoogleFonts.outfit(
      fontWeight: FontWeight.w700,
      color: Colors.white,
      fontSize: 24.sp,
    );
  }

  static TextStyle headingMedium(BuildContext context) {
    return GoogleFonts.outfit(
      fontWeight: FontWeight.w600,
      color: Colors.white,
      fontSize: 20.sp,
    );
  }

  static TextStyle bodySmall(BuildContext context) {
    return GoogleFonts.outfit(
      fontWeight: FontWeight.w400,
      color: Colors.white,
      fontSize: 12.sp,
    );
  }

  static TextStyle nunitoTextStyle(BuildContext context, {double? fontSize}) {
    return GoogleFonts.nunito(
      fontWeight: FontWeight.w700,
      color: Color(0xFF2563EB),
      fontSize: fontSize ?? 16.sp,
    );
  }

  static TextStyle nunitoTextWhiteStyle(
    BuildContext context, {
    double? fontSize,
  }) {
    return GoogleFonts.nunito(
      fontWeight: FontWeight.w400,
      color: Colors.white,
      fontSize: fontSize ?? 15.sp,
    );
  }

  static TextStyle robotTextWhiteStyle(
    BuildContext context, {
    double? fontSize,
  }) {
    return GoogleFonts.roboto(
      fontWeight: FontWeight.w400,
      color: Colors.white,
      fontSize: fontSize ?? 15.sp,
    );
  }

  ///////////////////////////////////////////////
  ///
  ///
  ///////////////
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
    color: Colors.black,
  );

  static TextStyle calibri18RegularWhite = TextStyle(
    fontFamily: 'Calibri',
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static TextStyle calibri13ItalicGrey600 = TextStyle(
    fontFamily: 'Calibri',
    fontSize: 13.sp,
    fontStyle: FontStyle.italic,
    color: Colors.grey[600],
  );

  // New Calibri styles
  static TextStyle calibri24BoldPrimary = TextStyle(
    fontFamily: 'Calibri',
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
  );

  static TextStyle calibri12LightGrey500 = TextStyle(
    fontFamily: 'Calibri',
    fontSize: 12.sp,
    fontWeight: FontWeight.w300,
    color: Colors.grey[500],
  );

  static TextStyle calibri20SemiBoldBlack = TextStyle(
    fontFamily: 'Calibri',
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  static TextStyle calibri16MediumWhiteWithShadow = TextStyle(
    fontFamily: 'Calibri',
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: Colors.white,
    shadows: [
      Shadow(blurRadius: 4.0, color: Colors.black38, offset: Offset(1, 1)),
    ],
  );

  static TextStyle calibri10RegularGrey400 = TextStyle(
    fontFamily: 'Calibri',
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    color: Colors.grey[400],
  );

  // Other font families
  static TextStyle roboto14RegularBlack = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );

  static TextStyle roboto16MediumPrimary = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: Colors.blue,
  );

  static TextStyle roboto18BoldWhite = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static TextStyle openSans12SemiBoldGrey600 = TextStyle(
    fontFamily: 'OpenSans',
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    color: Colors.grey[600],
  );

  static TextStyle openSans14RegularBlack = TextStyle(
    fontFamily: 'OpenSans',
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );

  // Special styles
  static TextStyle errorTextStyle = TextStyle(
    fontFamily: 'Calibri',
    fontSize: 12.sp,
    color: Colors.red[700],
    fontWeight: FontWeight.w500,
  );

  static TextStyle successTextStyle = TextStyle(
    fontFamily: 'Calibri',
    fontSize: 12.sp,
    color: Colors.green[700],
    fontWeight: FontWeight.w500,
  );

  static TextStyle linkTextStyle = TextStyle(
    fontFamily: 'Calibri',
    fontSize: 14.sp,
    color: Colors.blue[700],
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.underline,
  );

  static TextStyle buttonTextStyle = TextStyle(
    fontFamily: 'Calibri',
    fontSize: 16.sp,
    color: Colors.white,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.5,
  );

  static TextStyle appBarTitleStyle = TextStyle(
    fontFamily: 'Calibri',
    fontSize: 20.sp,
    color: Colors.white,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.5,
  );

  static TextStyle inputLabelStyle = TextStyle(
    fontFamily: 'Calibri',
    fontSize: 14.sp,
    color: Colors.grey[800],
    fontWeight: FontWeight.w500,
  );

  static TextStyle hintTextStyle = TextStyle(
    fontFamily: 'Calibri',
    fontSize: 14.sp,
    color: Colors.grey[500],
    fontWeight: FontWeight.normal,
  );

  static TextStyle chipTextStyle = TextStyle(
    fontFamily: 'Calibri',
    fontSize: 12.sp,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );

  static TextStyle tabBarTextStyle = TextStyle(
    fontFamily: 'Calibri',
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
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
