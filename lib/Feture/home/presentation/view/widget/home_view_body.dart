import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:madsolutionproject/Feture/home/presentation/manger/fetch_and_filter_product_cubit.dart';
import 'package:madsolutionproject/Feture/home/presentation/manger/fetch_and_filter_product_state.dart';
import 'package:madsolutionproject/Feture/home/presentation/view/widget/categories_horizontal_list.dart';
import 'package:madsolutionproject/Feture/home/presentation/view/widget/item_with_list_horizntal.dart';
import 'package:madsolutionproject/core/util/styel.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit()..initialize(),
      child: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          return NestedScrollView(
            headerSliverBuilder:
                (context, innerBoxIsScrolled) => [
                  SliverAppBar(
                    pinned: true,
                    floating: true,
                    expandedHeight: 60,
                    collapsedHeight: 60,
                    toolbarHeight: 60,
                    flexibleSpace: CategoriesHorizontalList(
                      categories: state.categories,
                      selectedCategory: state.selectedCategory,
                    ),
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  ),
                ],
            body: LayoutBuilder(
              builder: (context, constraints) {
                final crossAxisCount = constraints.maxWidth > 600 ? 3 : 2;

                final childAspectRatio = constraints.maxWidth > 600 ? 0.9 : 1.0;
                return CustomScrollView(
                  slivers: [
                    SliverPadding(
                      padding: const EdgeInsets.all(8),
                      sliver:
                          state.products.isEmpty
                              ? SliverFillRemaining(
                                child: Center(
                                  child: Text(
                                    'No products in ${state.selectedCategory} category',
                                    style: AppTextStyles.calibri16BoldWhite,
                                  ),
                                ),
                              )
                              : SliverGrid(
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: crossAxisCount,
                                      crossAxisSpacing: 14,
                                      mainAxisSpacing: 14,
                                      childAspectRatio: childAspectRatio,
                                    ),
                                delegate: SliverChildBuilderDelegate(
                                  (context, index) => ItemWithListHorizntal(
                                    productModel: state.products[index],
                                  ),
                                  childCount: state.products.length,
                                  addAutomaticKeepAlives: true,
                                ),
                              ),
                    ),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }
}
