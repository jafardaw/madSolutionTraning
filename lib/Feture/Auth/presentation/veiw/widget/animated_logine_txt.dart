import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madsolutionproject/core/util/styel.dart';

class AnimatedLoginText extends StatelessWidget {
  const AnimatedLoginText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        40.verticalSpace,
        Center(
          child: AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                "L  O  G  I  N ",
                speed: const Duration(milliseconds: 200),
                textStyle: AppTextStyles.calibri19NormalWhiteShadow.copyWith(
                  fontSize: 34.sp,
                ),
              ),
            ],
            totalRepeatCount: 1,
          ),
        ),
        80.verticalSpace,
      ],
    );
  }
}
