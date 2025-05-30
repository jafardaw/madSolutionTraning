import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:madsolutionproject/core/util/styel.dart';

class SplashViewFigma extends StatefulWidget {
  const SplashViewFigma({super.key});

  @override
  State<SplashViewFigma> createState() => _SplashViewFigmaState();
}

class _SplashViewFigmaState extends State<SplashViewFigma> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      // ignore: use_build_context_synchronously
      context.goNamed('');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            const Spacer(flex: 2),
            JumpingLettersText(),

            const Spacer(flex: 3),

            Text(
              'C O N N E C T I N G  T A L E N T S\nW I T H  O P P O R T U N I T I E S . . .',
              textAlign: TextAlign.center,
              style: AppTextStyles.outfitBoldWhite(context).copyWith(),
            ),

            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}

class JumpingLettersText extends StatefulWidget {
  const JumpingLettersText({super.key});

  @override
  State<JumpingLettersText> createState() => _JumpingLettersTextState();
}

class _JumpingLettersTextState extends State<JumpingLettersText> {
  bool _restart = false;

  @override
  Widget build(BuildContext context) {
    const text = "F R E E L Y";
    final baseStyle = AppTextStyles.outfitBoldWhite(
      context,
    ).copyWith(letterSpacing: 12.0);
    final yStyle = baseStyle.copyWith(color: const Color(0xFF00AEEF));

    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(text.length, (index) {
          final char = text[index];
          final style = char == 'Y' ? yStyle : baseStyle;

          return Text(char, style: style)
              .animate(
                autoPlay: true,
                delay: (index * 150).ms,
                onComplete: (controller) {
                  if (index == text.length - 1) {
                    Future.delayed(500.ms, () {
                      if (mounted) setState(() => _restart = !_restart);
                    });
                  }
                },
              )
              .moveY(
                begin: 0,
                end: -12,
                duration: 300.ms,
                curve: Curves.easeOutCubic,
              )
              .then(delay: 50.ms)
              .moveY(
                begin: -12,
                end: 0,
                duration: 300.ms,
                curve: Curves.easeInCubic,
              );
        }),
      ),
    );
  }
}
