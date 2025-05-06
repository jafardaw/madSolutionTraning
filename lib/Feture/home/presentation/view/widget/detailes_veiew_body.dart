import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:madsolutionproject/Feture/home/data/model/product_model.dart';
import 'package:madsolutionproject/core/constant.dart';
import 'package:madsolutionproject/core/utils/styel.dart';

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

class DetailViewBackButton extends StatelessWidget {
  const DetailViewBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 50,
      left: 20,
      child: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: kpraimaryblack,
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.arrow_back, color: Colors.white, size: 24),
        ),
      ),
    );
  }
}

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

class DetailViewStepsSection extends StatelessWidget {
  const DetailViewStepsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Steps",
          style: AppTextStyles.calibri13ItalicGrey600.copyWith(fontSize: 18.sp),
        ),
        const SizedBox(height: 15),
        Column(
          children: List.generate(
            3,
            (index) => DetailViewStepItem(index: index),
          ),
        ),
      ],
    );
  }
}

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
