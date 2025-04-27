import 'package:flutter/material.dart';
import 'package:madsolutionproject/core/widget/custom_botton.dart';

class RegisterButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const RegisterButton({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: 'Register',
      onTap: () {
        if (formKey.currentState!.validate()) {
          // تنفيذ العملية هنا
        }
      },
    );
  }
}
