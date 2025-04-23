import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthRedirectText extends StatelessWidget {
  final String message;
  final String? actionText;
  final VoidCallback onTap;
  final AlignmentGeometry alignmentGeometry;

  const AuthRedirectText({
    super.key,
    required this.message,
    required this.alignmentGeometry,
    this.actionText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignmentGeometry,
      child: TextButton(
        onPressed: onTap,
        child: RichText(
          text: TextSpan(
            style: TextStyle(
              color: Colors.black,
              fontSize: 13.sp,
              fontStyle: FontStyle.italic,
            ),
            children: [
              TextSpan(text: message),
              if (actionText != null)
                TextSpan(
                  text: ' $actionText',
                  style: const TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
