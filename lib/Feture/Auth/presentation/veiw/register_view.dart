import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:madsolutionproject/Feture/Auth/presentation/veiw/widget/auth_redirect_text.dart';
import 'package:madsolutionproject/core/constant.dart';
import 'package:madsolutionproject/core/utils/styel.dart';
import 'package:madsolutionproject/core/widget/custom_botton.dart';
import 'package:madsolutionproject/core/widget/custom_text_field.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [colorWhite, colorBlue],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  60.verticalSpace,
                  Center(
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          "R  E  G  I  S  T  E  R",
                          speed: const Duration(milliseconds: 150),
                          textStyle: AppTextStyles.calibri19NormalWhiteShadow
                              .copyWith(fontSize: 30.sp),
                        ),
                      ],
                      totalRepeatCount: 1,
                    ),
                  ),
                  100.verticalSpace,
                  CustomTextField(
                    hint: 'Full Name',
                    label: const Text('Full Name'),
                    hintText: 'Enter your full name',
                    prefixIcon: const Icon(Icons.person_outline),
                    obscureText: false,
                  ).animate().fadeIn().slideX(begin: -0.2),
                  30.verticalSpace,
                  CustomTextField(
                    hint: 'Email',
                    label: const Text('Email'),
                    hintText: 'Enter your email',
                    prefixIcon: const Icon(Icons.email_outlined),
                    obscureText: false,
                  ).animate().fadeIn().slideX(begin: 0.2),
                  30.verticalSpace,
                  CustomTextField(
                    hint: 'Password',
                    label: const Text('Password'),
                    hintText: 'Enter your password',
                    prefixIcon: const Icon(Icons.lock_outline),
                    obscureText: true,
                  ).animate().fadeIn().slideX(begin: -0.2),
                  30.verticalSpace,
                  CustomTextField(
                    hint: 'Confirm Password',
                    label: const Text('Confirm Password'),
                    hintText: 'Re-enter your password',
                    prefixIcon: const Icon(Icons.lock_outline),
                    obscureText: true,
                  ).animate().fadeIn().slideX(begin: 0.2),
                  50.verticalSpace,
                  CustomButton(text: 'Register', onTap: () {}),
                  40.verticalSpace,
                  AuthRedirectText(
                    alignmentGeometry: Alignment.center,
                    message: "already have new account?   ",
                    actionText: "Login",
                    onTap: () {},
                  ),
                  40.verticalSpace,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
