import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madsolutionproject/Feture/cart/presentation/manger/cart_cubit.dart';
import 'package:madsolutionproject/Feture/home/data/model/product_model.dart';
import 'package:madsolutionproject/core/constant.dart';
import 'package:madsolutionproject/core/util/app_router.dart';
import 'package:madsolutionproject/core/util/function/sh.dart';
import 'package:madsolutionproject/core/util/styel.dart';

class ItemWithListHorizntal extends StatefulWidget {
  const ItemWithListHorizntal({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  State<ItemWithListHorizntal> createState() => _ItemWithListHorizntalState();
}

class _ItemWithListHorizntalState extends State<ItemWithListHorizntal> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, List<ProductModel>>(
      builder: (context, cartItems) {
        final isInCart = context.read<CartCubit>().isInCart(
          widget.productModel.productId,
        );

        return GestureDetector(
          onTap: () {
            // GoRouter.of(
            //   context,
            // ).push('/detailes_view', extra: widget.productModel);
            AppRoutes.pushNamed(
              context,
              AppRoutes.detailsView,
              extra: widget.productModel,
            );
          },
          child: Container(
            width: 200.w,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: kpraimarywhite,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: kpraimarywhite,
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ],
              border: Border.all(color: kpraimarylightGrey, width: 1),
            ),
            child: Stack(
              children: [
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      color: kpraimarydarkBlue,
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [kpraimarylightGrey, kpraimarydarkBlue],
                      ),
                    ),
                  ),
                ),

                Positioned(
                  top: 10,
                  right: 10,
                  child: IconButton(
                    onPressed: () {
                      if (!isInCart) {
                        context.read<CartCubit>().addToCart(
                          widget.productModel,
                        );
                        showCustomSnackBar(
                          context,
                          '${widget.productModel.productName} added to cart',
                          color: kpraimryGreen,
                        );
                      } else {
                        showCustomSnackBar(
                          context,
                          '${widget.productModel.productName} is already in cart',
                          color: kpraimryGreen,
                        );
                      }
                    },
                    icon: Icon(
                      isInCart ? Icons.shopping_cart : Icons.add_shopping_cart,
                      color: isInCart ? Colors.green : kpraimarycolorBlue,
                    ),
                  ),
                ),

                Positioned(
                  left: 30,
                  right: 30,
                  top: 40,
                  bottom: 60,
                  child: Image.asset(
                    widget.productModel.imageURL,
                    fit: BoxFit.contain,
                  ),
                ),

                Positioned(
                  bottom: 15,
                  left: 15,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.productModel.category,
                        style: AppTextStyles.calibri16BoldWhite.copyWith(
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        widget.productModel.productName,
                        style: AppTextStyles.calibri16BoldWhite,
                      ),
                    ],
                  ),
                ),

                Positioned(
                  bottom: 15,
                  right: 15,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: kpraimarywhite,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(color: kpraimaryblack, blurRadius: 5),
                      ],
                    ),
                    child: Text(
                      '\$${widget.productModel.price.toStringAsFixed(2)}',
                      style: AppTextStyles.calibri14BoldBlueAccentUnderline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
