import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madsolutionproject/Feture/home/data/model/product_model.dart';
import 'package:madsolutionproject/core/util/styel.dart';

class DetailViewHeaderSection extends StatelessWidget {
  const DetailViewHeaderSection({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          productModel.productName,
          style: AppTextStyles.calibri13ItalicGrey600.copyWith(fontSize: 19.sp),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Icon(Icons.access_time, size: 18, color: Colors.grey[600]),
            const SizedBox(width: 5),
            Text(
              '${productModel.humidity}',
              style: AppTextStyles.calibri13ItalicGrey600,
            ),
            const SizedBox(width: 15),
            Icon(Icons.restaurant, size: 18, color: Colors.grey[600]),
            const SizedBox(width: 5),
            Text(
              productModel.category,
              style: AppTextStyles.calibri13ItalicGrey600,
            ),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
