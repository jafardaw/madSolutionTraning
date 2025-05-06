import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:madsolutionproject/Feture/home/data/model/product_model.dart';
import 'package:madsolutionproject/Feture/home/presentation/manger/fetch_and_filter_product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());

  void filterProducts(String category) {
    final filteredProducts =
        category == 'All'
            ? ProductModel.productsList
            : ProductModel.productsList
                .where((product) => product.category == category)
                .toList();

    emit(
      ProductLoaded(
        selectedCategory: category,
        products: filteredProducts,
        categories: state.categories,
      ),
    );
  }

  void initialize() {
    final categories = [
      'All',
      ...ProductModel.productsList.map((product) => product.category).toSet(),
    ];

    emit(
      ProductLoaded(
        selectedCategory: 'All',
        products: ProductModel.productsList,
        categories: categories,
      ),
    );
  }
}
