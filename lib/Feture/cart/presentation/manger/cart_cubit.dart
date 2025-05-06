import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:madsolutionproject/Feture/home/data/model/product_model.dart';

class CartCubit extends Cubit<List<ProductModel>> {
  CartCubit() : super([]);

  void addToCart(ProductModel product) {
    final List<ProductModel> currentItems = List.from(state);

    if (!currentItems.any((item) => item.productId == product.productId)) {
      currentItems.add(product);
      emit(currentItems);
    }
  }

  void removeFromCart(int productId) {
    final List<ProductModel> updatedItems =
        state.where((product) => product.productId != productId).toList();

    emit(updatedItems);
  }

  bool isInCart(int productId) {
    return state.any((product) => product.productId == productId);
  }
}
