import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:madsolutionproject/core/constant.dart';
import 'package:madsolutionproject/core/utils/styel.dart';
import 'package:shimmer/shimmer.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      context.go('/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(
        255,
        243,
        243,
        243,
      ), // تغيرنا من اللون الأزرق إلى الأبيض
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // _Logo(),
            SizedBox(height: 40.h),
            _AnimatedText(),
            SizedBox(height: 20.h),
            _ShimmerText(),
          ],
        ),
      ),
    );
  }
}

class _Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
          height: 120.h,
          width: 120.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(color: colorBlue, blurRadius: 40.r, spreadRadius: 8.r),
            ],
          ),
          child: ClipOval(
            child: Image.asset(
              'assets/image/IMG_20240520_225153_669.png',
              fit: BoxFit.cover,
            ),
          ),
        )
        .animate()
        .scale(duration: 1.seconds)
        .fadeIn(duration: 1.2.seconds)
        .slideY(begin: 1, end: 0);
  }
}

class _AnimatedText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
          height: 40.h,
          child: DefaultTextStyle(
            style: AppTextStyles.headline.copyWith(
              color: colorBlue,
            ), // تغيرنا إلى اللون الأزرق
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  "Flutter Developer ",
                  speed: Duration(milliseconds: 70),
                ),
                TypewriterAnimatedText(
                  "MED IT ",
                  speed: Duration(milliseconds: 70),
                ),
              ],
              totalRepeatCount: 1,
            ),
          ),
        )
        .animate()
        .scale(
          begin: const Offset(0.9, 0.9),
          end: const Offset(1, 1),
          duration: AppDurations.normal,
        )
        .fadeIn(delay: 1.2.seconds);
  }
}

class _ShimmerText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: [
        FadeEffect(duration: 600.ms),
        SlideEffect(begin: const Offset(-1, 0), duration: 800.ms),
        ScaleEffect(
          begin: const Offset(0.95, 0.95),
          end: const Offset(1.05, 1.05),
          duration: 1.5.seconds,
          curve: Curves.easeInOut,
          delay: 3.seconds,
        ),
      ],
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: colorBlue, // غيرنا إلى اللون الأزرق
        period: const Duration(seconds: 3),
        child: Text(
          "MAD SOLUTION",
          style: AppTextStyles.shimmerText.copyWith(
            color: colorBlue, // تغيرنا إلى اللون الأزرق
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
