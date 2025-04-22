import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madsolutionproject/core/constant.dart';
import 'package:madsolutionproject/core/utils/styel.dart';
import 'package:madsolutionproject/core/widget/custom_botton.dart';
import 'package:madsolutionproject/core/widget/custom_text_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [colorBlue, colorWhite],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                40.verticalSpace,
                Center(
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        "L  O  G  I  N ",
                        speed: Duration(milliseconds: 200),
                        textStyle: AppTextStyles.headline.copyWith(
                          fontSize: 34.sp,
                        ),
                      ),
                    ],
                    totalRepeatCount: 1,
                  ),
                ),
                40.verticalSpace,
                CustomTextField(
                  hint: 'Email',
                  label: Text('Email'),
                  hintText: 'Enter your email',
                  prefixIcon: const Icon(Icons.email_outlined),
                  obscureText: false,
                ).animate().fadeIn(duration: 800.ms).slideX(begin: -0.2),
                CustomTextField(
                  hint: 'Password',
                  label: Text('Password'),
                  hintText: 'Enter your password',
                  prefixIcon: const Icon(Icons.lock_outline),
                  obscureText: true,
                ).animate().fadeIn(duration: 800.ms).slideX(begin: 0.2),

                5.verticalSpace,
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: colorblack,
                        fontSize: 13.sp,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),
                CustomButton(text: 'Login', onTap: () {}),
                30.horizontalSpace,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
