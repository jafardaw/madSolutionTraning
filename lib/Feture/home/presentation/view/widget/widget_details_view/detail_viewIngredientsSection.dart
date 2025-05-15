import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madsolutionproject/Feture/home/presentation/view/widget/widget_details_view/detail_view_ingredient_item.dart';
import 'package:madsolutionproject/core/util/styel.dart';

class DetailViewIngredientsSection extends StatelessWidget {
  const DetailViewIngredientsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Ingredients",
          style: AppTextStyles.calibri13ItalicGrey600.copyWith(fontSize: 18.sp),
        ),
        const SizedBox(height: 15),
        Column(
          children: List.generate(
            4,
            (index) => DetailViewIngredientItem(index: index),
          ),
        ),
      ],
    );
  }
}
