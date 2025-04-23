import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:madsolutionproject/Feture/Auth/login/presentation/veiw/widget/auth_redirect_text.dart';
import 'package:madsolutionproject/core/constant.dart';
import 'package:madsolutionproject/core/utils/styel.dart';
import 'package:madsolutionproject/core/widget/custom_botton.dart';
import 'package:madsolutionproject/core/widget/custom_text_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                40.verticalSpace,
                Center(
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        "L  O  G  I  N ",
                        speed: const Duration(milliseconds: 200),
                        textStyle: AppTextStyles.calibri19NormalWhiteShadow
                            .copyWith(fontSize: 34.sp),
                      ),
                    ],
                    totalRepeatCount: 1,
                  ),
                ),
                40.verticalSpace,
                Column(
                  children: [
                    CustomTextField(
                      hint: 'Email',
                      label: const Text('Email'),
                      hintText: 'Enter your email',
                      prefixIcon: const Icon(Icons.email_outlined),
                      obscureText: false,
                    ).animate().fadeIn(duration: 800.ms).slideX(begin: -0.2),
                    24.verticalSpace,
                    CustomTextField(
                      hint: 'Password',
                      label: const Text('Password'),
                      hintText: 'Enter your password',
                      prefixIcon: const Icon(Icons.lock_outline),
                      obscureText: true,
                    ).animate().fadeIn(duration: 800.ms).slideX(begin: 0.2),
                  ],
                ),
                AuthRedirectText(
                  message: "Forgt Password?",
                  onTap: () {},
                  alignmentGeometry: Alignment.centerRight,
                ),
                CustomButton(
                  text: 'Login',
                  onTap: () async {
                    context.goNamed('register');
                  },
                ),
                AuthRedirectText(
                  alignmentGeometry: Alignment.center,
                  message: "Create new account?   ",
                  actionText: "Login",
                  onTap: () {},
                ),

                30.horizontalSpace,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
