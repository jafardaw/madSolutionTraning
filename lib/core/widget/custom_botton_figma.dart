import 'package:flutter/material.dart';
import 'package:madsolutionproject/core/constant.dart';
import 'package:madsolutionproject/core/util/styel.dart';

class CustomButtonFigma extends StatelessWidget {
  const CustomButtonFigma({
    super.key,
    this.onTap,
    required this.text,
    // required this.textStyle,
  });

  final VoidCallback? onTap;
  final String text;
  // final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: kpraimaryblack,
      highlightColor: kpraimaryblack,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width < 600 ? 6 : 14,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: kpraimarydarkBluefigma,

            borderRadius: const BorderRadius.all(Radius.circular(6)),
          ),
          width: double.infinity,
          height: MediaQuery.of(context).size.width < 600 ? 50 : 55,
          child: Center(
            child: Text(
              text,
              style: AppTextStyles.nunitoTextStyle(context).copyWith(
                fontWeight: FontWeight.w100,
                color: kpraimarywhite,
                fontSize: 19,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
