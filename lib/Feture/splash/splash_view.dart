import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:madsolutionproject/core/constant.dart';
import 'package:madsolutionproject/core/util/styel.dart';

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
      // ignore: use_build_context_synchronously
      context.goNamed('login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              height: 250.h,
              child: Lottie.asset('assets/animation_1745402143645.json'),
            ),
            SizedBox(height: 20.h),
            _AnimatedText(),
          ],
        ),
      ),
    );
  }
}

class _AnimatedText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
          height: 50.h,
          child: DefaultTextStyle(
            style: AppTextStyles.calibri16BoldWhite.copyWith(
              color: const Color.fromARGB(255, 68, 106, 173),
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  "Welcome back  ",
                  speed: Duration(milliseconds: 70),
                ),

                TypewriterAnimatedText(
                  "Lets go... ",
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
