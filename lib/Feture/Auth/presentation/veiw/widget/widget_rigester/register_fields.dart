import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madsolutionproject/core/utils/function/validation.dart';
import 'package:madsolutionproject/core/widget/custom_text_field.dart';

class RegisterFields extends StatelessWidget {
  final TextEditingController fullNameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;

  const RegisterFields({
    super.key,
    required this.fullNameController,
    required this.emailController,
    required this.passwordController,
    required this.confirmPasswordController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          controller: fullNameController,
          hint: 'Full Name',
          label: const Text('Full Name'),
          hintText: 'Enter your full name',
          prefixIcon: const Icon(Icons.person_outline),
          obscureText: false,
          validator: (value) => validateName(value),
        ).animate().fadeIn().slideX(begin: -0.2),
        30.verticalSpace,
        CustomTextField(
          controller: emailController,
          hint: 'Email',
          label: const Text('Email'),
          hintText: 'Enter your email',
          prefixIcon: const Icon(Icons.email_outlined),
          obscureText: false,
          validator: (value) => validateName(value),
        ).animate().fadeIn().slideX(begin: 0.2),
        30.verticalSpace,
        CustomTextField(
          controller: passwordController,
          hint: 'Password',
          label: const Text('Password'),
          hintText: 'Enter your password',
          prefixIcon: const Icon(Icons.lock_outline),
          obscureText: true,
          validator: (value) => validatePassword(value),
        ).animate().fadeIn().slideX(begin: -0.2),
        30.verticalSpace,
        CustomTextField(
          controller: confirmPasswordController,
          hint: 'Confirm Password',
          label: const Text('Confirm Password'),
          hintText: 'Re-enter your password',
          prefixIcon: const Icon(Icons.lock_outline),
          obscureText: true,
          validator:
              (value) =>
                  validateConfirmPassword(value, passwordController.text),
        ).animate().fadeIn().slideX(begin: 0.2),
      ],
    );
  }
}
