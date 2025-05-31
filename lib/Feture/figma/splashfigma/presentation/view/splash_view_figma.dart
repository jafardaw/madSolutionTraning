// import 'package:flutter/material.dart';
// import 'package:flutter_animate/flutter_animate.dart';
// import 'package:go_router/go_router.dart';
// import 'package:madsolutionproject/core/util/styel.dart';

// class SplashViewFigma extends StatefulWidget {
//   const SplashViewFigma({super.key});

//   @override
//   State<SplashViewFigma> createState() => _SplashViewFigmaState();
// }

// class _SplashViewFigmaState extends State<SplashViewFigma> {
//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(const Duration(seconds: 5), () {
//       // ignore: use_build_context_synchronously
//       context.goNamed('');
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: <Widget>[
//             const Spacer(flex: 2),
//             JumpingLettersText(),

//             const Spacer(flex: 3),

//             Text(
//               'C O N N E C T I N G  T A L E N T S\nW I T H  O P P O R T U N I T I E S . . .',
//               textAlign: TextAlign.center,
//               style: AppTextStyles.outfitBoldWhite(context).copyWith(),
//             ),

//             const SizedBox(height: 60),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class JumpingLettersText extends StatefulWidget {
//   const JumpingLettersText({super.key});

//   @override
//   State<JumpingLettersText> createState() => _JumpingLettersTextState();
// }

// class _JumpingLettersTextState extends State<JumpingLettersText> {
//   bool _restart = false;

//   @override
//   Widget build(BuildContext context) {
//     const text = "F R E E L Y";
//     final baseStyle = AppTextStyles.outfitBoldWhite(
//       context,
//     ).copyWith(letterSpacing: 12.0);
//     final yStyle = baseStyle.copyWith(color: const Color(0xFF00AEEF));

//     return Center(
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: List.generate(text.length, (index) {
//           final char = text[index];
//           final style = char == 'Y' ? yStyle : baseStyle;

//           return Text(char, style: style)
//               .animate(
//                 autoPlay: true,
//                 delay: (index * 150).ms,
//                 onComplete: (controller) {
//                   if (index == text.length - 1) {
//                     Future.delayed(500.ms, () {
//                       if (mounted) setState(() => _restart = !_restart);
//                     });
//                   }
//                 },
//               )
//               .moveY(
//                 begin: 0,
//                 end: -12,
//                 duration: 300.ms,
//                 curve: Curves.easeOutCubic,
//               )
//               .then(delay: 50.ms)
//               .moveY(
//                 begin: -12,
//                 end: 0,
//                 duration: 300.ms,
//                 curve: Curves.easeInCubic,
//               );
//         }),
//       ),
//     );
//   }
// }
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madsolutionproject/core/constant.dart';
import 'package:madsolutionproject/core/util/app_router.dart';
import 'package:madsolutionproject/core/util/styel.dart';

// واجهة شاشة البداية (Splash Screen)
class SplashViewFigma extends StatefulWidget {
  const SplashViewFigma({super.key});

  @override
  State<SplashViewFigma> createState() => _SplashViewFigmaState();
}

// حالة الواجهة مع دعم للتحكم في الرسوم المتحركة
class _SplashViewFigmaState extends State<SplashViewFigma>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller; // للتحكم في الرسوم المتحركة
  List<double> charOffsets = [0, 0, 0, 0, 0, 0]; // إزاحة كل حرف (للقفز)
  List<Color> charColors = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    kpraimarydarkBluefigma, // لون الحرف الأخير 'Y' مختلف (أزرق)
  ];
  Timer? _animationTimer; // مؤقت لتكرار تأثير القفز

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 3000),
    )..repeat(reverse: true);

    // بدء تأثير القفز بعد تأخير قصير (100 مللي ثانية)
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        _startJumpingAnimation(); // بدء تأثير القفز للأحرف
      });
    });

    // الانتقال إلى الشاشة التالية بعد 8 ثواني
    Future.delayed(const Duration(seconds: 8), () {
      // GoRouter.of(context).push('roleselection_screen');
      // ignore: use_build_context_synchronously
      AppRoutes.goNamed(context, AppRoutes.roleSelectionScreen);
    });
  }

  void _startJumpingAnimation() {
    // لكل حرف في الكلمة "FREELY"
    for (int i = 0; i < charOffsets.length; i++) {
      // تأخير مختلف لكل حرف لإنشاء تأثير متتابع

      // المرحلة الأولى: القفز للأعلى
      Future.delayed(Duration(milliseconds: i * 300), () {
        if (mounted) {
          // التأكد من أن الواجهة ما زالت موجودة
          setState(() {
            charOffsets[i] = -20.0; // تحريك الحرف لأعلى
          });
        }
      });

      // المرحلة الثانية: العودة للأسفل (بعد 150 مللي ثانية من القفز)
      Future.delayed(Duration(milliseconds: (i * 300) + 150), () {
        if (mounted) {
          setState(() {
            charOffsets[i] = 0.0; // إعادة الحرف إلى موضعه الأصلي
          });
        }
      });
    }

    // تكرار التأثير كل 3 ثواني
    _animationTimer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (mounted) {
        _startJumpingAnimation();
      } else {
        timer.cancel(); // إلغاء المؤقت إذا لم تكن الواجهة موجودة
      }
    });
  }

  @override
  void dispose() {
    // التنظيف عند تدمير الواجهة
    _controller.dispose(); // التخلص من متحكم الرسوم المتحركة
    _animationTimer?.cancel(); // إلغاء أي مؤقتات نشطة
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final chars = ["F", "R", "E", "E", "L", "Y"]; // أحرف كلمة "FREELY"

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(), // مساحة فارغة في الأعلى
          // صف يحتوي على الأحرف المتحركة
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(chars.length, (index) {
              // حاوية متحركة لكل حرف
              return AnimatedContainer(
                duration: const Duration(milliseconds: 300), // مدة الحركة
                curve: Curves.easeOut, // منحنى الحركة (يبدأ سريعًا وينتهي ببطء)
                transform: Matrix4.translationValues(
                  0,
                  charOffsets[index], // الإزاحة الرأسية (للقفز)
                  0,
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: 5.w,
                ), // هامش بين الأحرف
                child: Text(
                  chars[index], // الحرف الحالي
                  style: AppTextStyles.outfitBoldWhite(context).copyWith(
                    color: charColors[index], // لون الحرف
                    fontWeight: FontWeight.bold, // سمك الخط
                  ),
                ),
              );
            }),
          ),

          const Spacer(), // مساحة فارغة في الأسفل
          // النص الثابت في الأسفل
          Text(
            'CONNECTING TALENTS',
            style: AppTextStyles.outfitBoldWhite(
              context,
            ).copyWith(color: Colors.white),
          ),
          Text(
            'WITH OPPORTUNITIES...',
            style: AppTextStyles.outfitBoldWhite(
              context,
            ).copyWith(color: Colors.white),
          ),
          SizedBox(height: 10.h), // مسافة بسيطة في الأسفل
        ],
      ),
    );
  }
}
