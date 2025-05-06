import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:madsolutionproject/Feture/cart/presentation/manger/cart_cubit.dart';
import 'package:madsolutionproject/Feture/home/data/model/product_model.dart';
import 'package:madsolutionproject/core/constant.dart';
import 'package:madsolutionproject/core/utils/function/sh.dart';
import 'package:madsolutionproject/core/utils/styel.dart';

class CartItemCard extends StatelessWidget {
  final ProductModel product;

  const CartItemCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/detailes_view', extra: product);
      },
      child: Container(
        width: 200.w,
        margin: EdgeInsets.symmetric(horizontal: 10.w),
        decoration: BoxDecoration(
          color: kpraimarywhite,
          borderRadius: BorderRadius.circular(20.r),
          boxShadow: [
            BoxShadow(color: kpraimarywhite, blurRadius: 10, spreadRadius: 2),
          ],
          border: Border.all(color: kpraimarylightGrey, width: 1),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  color: kpraimarydarkBlue,
                  borderRadius: BorderRadius.circular(20.r),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [kpraimarylightGrey, kpraimarydarkBlue],
                  ),
                ),
              ),
            ),

            Positioned(
              top: 10.r,
              right: 10.r,
              child: IconButton(
                onPressed: () {
                  context.read<CartCubit>().removeFromCart(product.productId);
                  showCustomSnackBar(
                    context,
                    'Deleted The ${product.productName} ',
                    color: kpraimryred,
                  );
                },
                icon: Icon(Icons.delete, color: Colors.red),
              ),
            ),

            // صورة المنتج
            Positioned(
              left: 30.w,
              right: 30.w,
              top: 40.h,
              bottom: 60.h,
              child: Image.asset(product.imageURL, fit: BoxFit.contain),
            ),

            // معلومات المنتج
            Positioned(
              bottom: 15.h,
              left: 15.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.category,
                    style: AppTextStyles.calibri16BoldWhite.copyWith(
                      fontSize: 14.sp,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    product.productName,
                    style: AppTextStyles.calibri16BoldWhite,
                  ),
                ],
              ),
            ),

            // السعر
            Positioned(
              bottom: 15.h,
              right: 15.w,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: kpraimarywhite,
                  borderRadius: BorderRadius.circular(20.r),
                  boxShadow: [BoxShadow(color: kpraimaryblack, blurRadius: 5)],
                ),
                child: Text(
                  '\$${product.price.toStringAsFixed(2)}',
                  style: AppTextStyles.calibri14BoldBlueAccentUnderline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
