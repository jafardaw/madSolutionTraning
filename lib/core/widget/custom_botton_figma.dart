import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:madsolutionproject/core/constant.dart';
import 'package:madsolutionproject/core/util/styel.dart';

class CustomButtonFigma extends StatelessWidget {
  const CustomButtonFigma({super.key, this.onTap, required this.text});

  final VoidCallback? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
          onTap: onTap,
          splashColor: Colors.black,
          highlightColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width < 600 ? 6 : 14,
            ),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeInOut,
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
                  ),
                ),
              ),
            ),
          ),
        )
        .animate()
        .fadeIn(duration: 400.ms)
        .slideY(begin: 0.2)
        .scale(delay: 100.ms, duration: 300.ms);
  }
}
