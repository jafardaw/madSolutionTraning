import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:madsolutionproject/core/constant.dart';
import 'package:madsolutionproject/core/util/function/validation.dart';
import 'package:madsolutionproject/core/util/styel.dart';
import 'package:madsolutionproject/core/widget/custom_botton_figma.dart';
import 'package:madsolutionproject/core/widget/custome_field_figma.dart';

class LoginViewFigma extends StatefulWidget {
  const LoginViewFigma({super.key});

  @override
  State<LoginViewFigma> createState() => _LoginViewFigmaState();
}

class _LoginViewFigmaState extends State<LoginViewFigma> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 60.h), // Space from top
              Text('Email', style: AppTextStyles.nunitoTextWhiteStyle(context)),
              SizedBox(height: 8.h),

              CustomTextFieldFigma(
                validator: (value) => validateEmail(value),

                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                hintText: 'name@company.csssom',
                hintStyle: TextStyle(color: kpraimarywhite.withOpacity(0.5)),
              ),

              SizedBox(height: 20.h),
              Text(
                'Password',
                style: AppTextStyles.nunitoTextWhiteStyle(context),
              ),
              SizedBox(height: 8.h),
              CustomTextFieldFigma(
                validator: (value) => validatePassword(value),
                controller: _passwordController,
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
                hintText: '..........',
                hintStyle: TextStyle(
                  color: kpraimarywhite.withValues(alpha: 0.5),
                ),
              ),

              SizedBox(height: 10.h),
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Remember me',
                    style: TextStyle(color: kpraimarycolorBlue, fontSize: 14),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              CustomButtonFigma(
                text: 'Continoue',
                onTap: () {
                  if (_formKey.currentState!.validate()) {}
                },
              ),
              SizedBox(height: 30.h),
              Center(
                child: Text(
                  'or',
                  style: TextStyle(color: kpraimarywhite70, fontSize: 16),
                ),
              ),
              Divider(
                color: kpraimarywhite30,
                thickness: 1,
                endIndent: 70,
                indent: 70,
              ),
              SizedBox(height: 30.h),

              buildSocialButton(
                context: context,
                onPressed: () {
                  if (_formKey.currentState!.validate()) {}
                },
                text: 'Sign up with Google',
                icon: 'assets/images/googleSymbol.png',
                borderColor: kpraimarydarkBluefigma,
                textColor: kpraimarywhite,
              ),
              const SizedBox(height: 15),
              buildSocialButton(
                context: context,
                onPressed: () {
                  if (_formKey.currentState!.validate()) {}
                },
                text: 'Sign up with Facebook',
                icon: Icons.facebook_sharp,
                borderColor: kpraimarywhite30,
                textColor: kpraimarywhite,
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Don't have a Freely account?",
                    style: AppTextStyles.robotTextWhiteStyle(context),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Sign up',
                      style: AppTextStyles.robotTextWhiteStyle(
                        context,
                      ).copyWith(color: kpraimarydarkBluefigma),
                    ),
                  ),
                ],
              ),
              // const SizedBox(height: 20), // Bottom padding
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildSocialButton({
  required BuildContext context,
  required VoidCallback onPressed,
  required String text,
  required dynamic icon,
  Color? borderColor,
  Color? textColor,
}) {
  return OutlinedButton.icon(
    onPressed: onPressed,
    style: OutlinedButton.styleFrom(
      foregroundColor: textColor ?? Theme.of(context).colorScheme.onSurface,
      side: BorderSide(
        color: borderColor ?? Theme.of(context).colorScheme.outline,
        width: 1.w,
      ),
      padding: EdgeInsets.symmetric(vertical: 15.h),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      minimumSize: Size(double.infinity, 50.h),
    ),
    icon:
        icon is IconData
            ? Icon(icon, size: 20.w)
            : Image.asset(icon as String, height: 20.h, width: 20.w),
    label: Padding(
      padding: const EdgeInsets.symmetric(vertical: 11.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
      ),
    ),
  );
}
