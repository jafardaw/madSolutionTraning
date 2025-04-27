import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madsolutionproject/Feture/Auth/presentation/veiw/widget/animated_logine_txt.dart';
import 'package:madsolutionproject/Feture/Auth/presentation/veiw/widget/forgot_password_text.dart';
import 'package:madsolutionproject/Feture/Auth/presentation/veiw/widget/login_button.dart';
import 'package:madsolutionproject/Feture/Auth/presentation/veiw/widget/login_fields.dart';
import 'package:madsolutionproject/Feture/Auth/presentation/veiw/widget/widget_rigester/register_redirect_text.dart';
import 'package:madsolutionproject/core/constant.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const AnimatedLoginText(),
                  LoginFields(
                    emailController: emailController,
                    passwordController: passwordController,
                  ),
                  const ForgotPasswordText(),
                  LoginButton(formKey: _formKey),
                  const RegisterRedirectText(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
