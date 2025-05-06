import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:madsolutionproject/Feture/home/presentation/manger/fetch_and_filter_product_cubit.dart';
import 'package:madsolutionproject/core/constant.dart';
import 'package:madsolutionproject/core/utils/styel.dart';

class CategoriesHorizontalList extends StatelessWidget {
  const CategoriesHorizontalList({
    super.key,
    required this.categories,
    required this.selectedCategory,
  });

  final List<String> categories;
  final String selectedCategory;

  @override
  Widget build(BuildContext context) {
    final productCubit = context.read<ProductCubit>();

    return Container(
      color: kpraimarywhite,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          final isSelected = category == selectedCategory;

          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: GestureDetector(
              onTap: () => productCubit.filterProducts(category),
              child: Chip(
                label: Text(
                  category,
                  style: AppTextStyles.calibri16BoldWhite.copyWith(
                    fontSize: 15,
                  ),
                ),
                backgroundColor:
                    isSelected ? kpraimarylightGrey : kpraimarycolorBlue,
                labelStyle: TextStyle(
                  color: isSelected ? Colors.white : Colors.black,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
