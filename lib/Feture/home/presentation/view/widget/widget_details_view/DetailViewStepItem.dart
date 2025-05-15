import 'package:flutter/material.dart';
import 'package:madsolutionproject/core/constant.dart';
import 'package:madsolutionproject/core/util/styel.dart';

class DetailViewStepItem extends StatelessWidget {
  final int index;

  const DetailViewStepItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final steps = [
      "Soak walnuts overnight in water, then drain and rinse.",
      "Blend all ingredients together until smooth.",
      "Strain through a nut milk bag and serve chilled.",
    ];

    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              color: kpraimarycolorBlue,
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: Text(
              "${index + 1}",
              style: AppTextStyles.calibri16BoldWhite,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(steps[index], style: AppTextStyles.calibri13ItalicGrey600),
                if (index == 1) ...[const SizedBox(height: 10)],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
