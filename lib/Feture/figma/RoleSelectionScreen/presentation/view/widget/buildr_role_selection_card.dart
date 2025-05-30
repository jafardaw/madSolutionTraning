import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madsolutionproject/core/constant.dart';
import 'package:madsolutionproject/core/util/styel.dart';

Widget buildRoleSelectionCard(
  BuildContext context, {
  required String image,
  required String text,
  required VoidCallback onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 176.h,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: kpraimarywhite, width: 2),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset(image, height: 60.h, width: 42.w, fit: BoxFit.contain),
            const Spacer(),

            Text(
              text,
              textAlign: TextAlign.center,
              style: AppTextStyles.nunitoTextStyle(
                context,
              ).copyWith(color: kpraimarywhite, fontSize: 20),
            ),
          ],
        ),
      ),
    ),
  );
}
