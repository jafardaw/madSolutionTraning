import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:madsolutionproject/core/widget/custom_botton.dart';

class LoginButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const LoginButton({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: 'Login',
      onTap: () {
        if (formKey.currentState!.validate()) {
          context.goNamed('root_page');
        }
      },
    );
  }
}
