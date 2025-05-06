import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:madsolutionproject/Feture/cart/presentation/manger/cart_cubit.dart';
import 'package:madsolutionproject/Feture/cart/presentation/view/widget/cart_item_card.dart';
import 'package:madsolutionproject/Feture/home/data/model/product_model.dart';

import 'package:madsolutionproject/core/utils/styel.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CartCubit, List<ProductModel>>(
        builder: (context, cartItems) {
          if (cartItems.isEmpty) {
            return Center(
              child: Text(
                ' No Products in Cart',
                style: AppTextStyles.calibri18RegularWhite,
              ),
            );
          }

          return LayoutBuilder(
            builder: (context, constraints) {
              final crossAxisCount = constraints.maxWidth > 600 ? 3 : 2;

              final childAspectRatio = constraints.maxWidth > 600 ? 0.9 : 1.0;
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: childAspectRatio,
                ),
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  return CartItemCard(product: cartItems[index]);
                },
              );
            },
          );
        },
      ),
    );
  }
}
