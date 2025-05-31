import 'package:flutter/material.dart';

import 'package:madsolutionproject/Feture/home/data/model/product_model.dart';
import 'package:madsolutionproject/Feture/home/presentation/view/widget/widget_details_view/detail_view_back_button.dart';
import 'package:madsolutionproject/Feture/home/presentation/view/widget/widget_details_view/detail_view_description_section.dart';
import 'package:madsolutionproject/Feture/home/presentation/view/widget/widget_details_view/detail_view_header_section.dart';
import 'package:madsolutionproject/Feture/home/presentation/view/widget/widget_details_view/detail_view_ingredients_section.dart';
import 'package:madsolutionproject/Feture/home/presentation/view/widget/widget_details_view/detail_view_steps_section.dart';
import 'package:madsolutionproject/Feture/home/presentation/view/widget/widget_details_view/detail_view_user_section.dart';
import 'package:madsolutionproject/core/constant.dart';

class DetailesViewBody extends StatelessWidget {
  const DetailesViewBody({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder:
            (context, innerBoxIsScrolled) => [
              SliverAppBar(
                backgroundColor: kpraimarywhite.withValues(alpha: 0.8),
                elevation: innerBoxIsScrolled ? 4 : 0,
                expandedHeight: 300,
                pinned: true,
                floating: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    productModel.imageURL,
                    fit: BoxFit.cover,
                  ),
                ),
                leading: const DetailViewBackButton(),
              ),
            ],
        body: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              sliver: SliverList(
                delegate: SliverChildListDelegate.fixed([
                  const SizedBox(height: 20),
                  DetailViewHeaderSection(productModel: productModel),
                  DetailViewUserSection(productModel: productModel),
                  const Divider(height: 30, thickness: 1),
                  const DetailViewDescriptionSection(),
                  const Divider(height: 30, thickness: 1),
                  const DetailViewIngredientsSection(),
                  const Divider(height: 30, thickness: 1),
                  const DetailViewStepsSection(),
                  const SizedBox(height: 30),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// class DetailViewIngredientsSection extends StatelessWidget {
//   const DetailViewIngredientsSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           "Ingredients",
//           style: AppTextStyles.calibri13ItalicGrey600.copyWith(fontSize: 18.sp),
//         ),
//         const SizedBox(height: 15),
//         Column(
//           children: List.generate(
//             4,
//             (index) => DetailViewIngredientItem(index: index),
//           ),
//         ),
//       ],
//     );
//   }
// }
