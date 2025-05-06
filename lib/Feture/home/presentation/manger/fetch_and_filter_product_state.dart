import 'package:madsolutionproject/Feture/home/data/model/product_model.dart';

abstract class ProductState {
  final List<String> categories;
  final String selectedCategory;
  final List<ProductModel> products;

  ProductState({
    required this.categories,
    required this.selectedCategory,
    required this.products,
  });
}

class ProductInitial extends ProductState {
  ProductInitial()
    : super(categories: [], selectedCategory: 'All', products: []);
}

class ProductLoaded extends ProductState {
  ProductLoaded({
    required super.selectedCategory,
    required super.products,
    required super.categories,
  });
}
