import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:madsolutionproject/Feture/Auth/presentation/veiw/widget/auth_redirect_text.dart';

class LoginRedirectText extends StatelessWidget {
  const LoginRedirectText({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthRedirectText(
      alignmentGeometry: Alignment.center,
      message: "Already have an account?   ",
      actionText: "Login",
      onTap: () {
        context.goNamed('login');
      },
    );
  }
}
