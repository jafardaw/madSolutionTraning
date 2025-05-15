import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madsolutionproject/core/util/styel.dart';

class DetailViewDescriptionSection extends StatelessWidget {
  const DetailViewDescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Description",
          style: AppTextStyles.calibri13ItalicGrey600.copyWith(fontSize: 18.sp),
        ),
        const SizedBox(height: 12),
        Text(
          'A delicious blend of cacao, maca, and walnuts creates this nutritious milk alternative. Perfect for smoothies or as a standalone drink. Rich in antioxidants and healthy fats.',
          style: AppTextStyles.calibri13ItalicGrey600,
        ),
      ],
    );
  }
}
