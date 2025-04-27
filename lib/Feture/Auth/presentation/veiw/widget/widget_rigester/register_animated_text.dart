import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madsolutionproject/core/utils/styel.dart';

class RegisterAnimatedText extends StatelessWidget {
  const RegisterAnimatedText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        60.verticalSpace,
        Center(
          child: AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                "R  E  G  I  S  T  E  R",
                speed: const Duration(milliseconds: 150),
                textStyle: AppTextStyles.calibri19NormalWhiteShadow.copyWith(
                  fontSize: 30.sp,
                ),
              ),
            ],
            totalRepeatCount: 1,
          ),
        ),
        100.verticalSpace,
      ],
    );
  }
}
