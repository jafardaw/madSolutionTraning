import 'package:flutter/material.dart';
import 'package:madsolutionproject/Feture/home/presentation/view/widget/detailes_veiew_body.dart';
import 'package:madsolutionproject/Feture/home/data/model/product_model.dart';

class DetailesView extends StatelessWidget {
  const DetailesView({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: DetailesViewBody(productModel: productModel));
  }
}
