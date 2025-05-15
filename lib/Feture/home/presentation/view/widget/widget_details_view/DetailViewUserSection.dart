import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:madsolutionproject/Feture/home/data/model/product_model.dart';
import 'package:madsolutionproject/core/util/styel.dart';

class DetailViewUserSection extends StatelessWidget {
  const DetailViewUserSection({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            GoRouter.of(context).push('/profile_view');
          },
          child: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(productModel.imageURL),
          ),
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Elena Shelby", style: AppTextStyles.calibri15MediumGrey800),
            const SizedBox(height: 4),
            Text(
              productModel.measuerement,
              style: AppTextStyles.calibri10RegularGrey400,
            ),
          ],
        ),
        const Spacer(),
        Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border),
              style: IconButton.styleFrom(
                backgroundColor: Colors.grey[100],
                padding: const EdgeInsets.all(12),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
