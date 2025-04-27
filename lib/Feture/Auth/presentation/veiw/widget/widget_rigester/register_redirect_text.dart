import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:madsolutionproject/Feture/Auth/presentation/veiw/widget/auth_redirect_text.dart';

class RegisterRedirectText extends StatelessWidget {
  const RegisterRedirectText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AuthRedirectText(
          alignmentGeometry: Alignment.center,
          message: "Create new account?   ",
          actionText: "Register",
          onTap: () {
            context.goNamed('register');
          },
        ),
        30.horizontalSpace,
      ],
    );
  }
}
