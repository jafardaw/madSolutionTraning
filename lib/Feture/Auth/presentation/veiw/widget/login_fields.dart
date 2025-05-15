import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madsolutionproject/core/util/function/validation.dart';
import 'package:madsolutionproject/core/widget/custom_text_field.dart';

class LoginFields extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const LoginFields({
    super.key,
    required this.emailController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          controller: emailController,
          hint: 'Email',
          label: const Text('Email'),
          hintText: 'Enter your email',
          prefixIcon: const Icon(Icons.email_outlined),
          obscureText: false,
          validator: (value) => validateEmail(value),
        ).animate().fadeIn(duration: 800.ms).slideX(begin: -0.2),
        40.verticalSpace,
        CustomTextField(
          controller: passwordController,
          hint: 'Password',
          label: const Text('Password'),
          hintText: 'Enter your password',
          prefixIcon: const Icon(Icons.lock_outline),
          obscureText: true,

          validator: (value) => validatePassword(value),
        ).animate().fadeIn(duration: 800.ms).slideX(begin: 0.2),
      ],
    );
  }
}
