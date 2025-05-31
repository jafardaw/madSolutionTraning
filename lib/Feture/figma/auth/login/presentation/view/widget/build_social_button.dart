import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildSocialButton({
  required BuildContext context,
  required VoidCallback onPressed,
  required String text,
  required dynamic iconorimage,
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
        iconorimage is IconData
            ? Icon(iconorimage, size: 16.w)
            : Image.asset(iconorimage as String, height: 20.h, width: 20.w),
    label: Padding(
      padding: const EdgeInsets.symmetric(vertical: 11.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
      ),
    ),
  );
}
