import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madsolutionproject/Feture/Auth/presentation/veiw/widget/widget_rigester/login_redirect_text.dart';
import 'package:madsolutionproject/Feture/Auth/presentation/veiw/widget/widget_rigester/register_animated_text.dart';
import 'package:madsolutionproject/Feture/Auth/presentation/veiw/widget/widget_rigester/register_button.dart';
import 'package:madsolutionproject/Feture/Auth/presentation/veiw/widget/widget_rigester/register_fields.dart';
import 'package:madsolutionproject/core/constant.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [colorWhite, kpraimarycolorBlue],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const RegisterAnimatedText(),
                    RegisterFields(
                      fullNameController: fullNameController,
                      emailController: emailController,
                      passwordController: passwordController,
                      confirmPasswordController: confirmPasswordController,
                    ),
                    50.verticalSpace,
                    RegisterButton(formKey: _formKey),
                    40.verticalSpace,
                    const LoginRedirectText(),
                    40.verticalSpace,
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
