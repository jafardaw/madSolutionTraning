import 'package:flutter/material.dart';

import 'package:madsolutionproject/core/constant.dart';
import 'package:madsolutionproject/core/util/styel.dart';

class DetailViewIngredientItem extends StatelessWidget {
  final int index;

  const DetailViewIngredientItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final ingredients = [
      "4 Eggs",
      "1 Cup Walnuts",
      "2 Tbsp Cacao Powder",
      "1 Tsp Maca Powder",
    ];

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: kpraimarycolorBlue.withValues(alpha: 0.2),
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.check, size: 16, color: kpraimarycolorBlue),
          ),
          const SizedBox(width: 12),
          Text(ingredients[index], style: AppTextStyles.calibri13ItalicGrey600),
        ],
      ),
    );
  }
}
