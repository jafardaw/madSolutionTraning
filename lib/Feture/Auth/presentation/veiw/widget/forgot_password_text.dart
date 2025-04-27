import 'package:flutter/material.dart';
import 'package:madsolutionproject/Feture/Auth/presentation/veiw/widget/auth_redirect_text.dart';

class ForgotPasswordText extends StatelessWidget {
  const ForgotPasswordText({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthRedirectText(
      message: "Forgot Password?",
      onTap: () {},
      alignmentGeometry: Alignment.centerRight,
    );
  }
}
