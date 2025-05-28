import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:madsolutionproject/Feture/home/data/model/product_model.dart';
import 'package:madsolutionproject/core/util/hive_helper.dart';

class CartCubit extends Cubit<List<ProductModel>> {
  CartCubit() : super([]);

  void loadCartItems() {
    emit(HiveHelper.getCartBox().values.toList());
  }

  void addToCart(ProductModel product) {
    final List<ProductModel> currentItems = List.from(state);

    if (!currentItems.any((item) => item.productId == product.productId)) {
      currentItems.add(product);
      HiveHelper.getCartBox().put(product.productId, product);
      emit(currentItems);
    }
  }

  void removeFromCart(int productId) {
    HiveHelper.getCartBox().delete(productId);

    final List<ProductModel> updatedItems =
        state.where((product) => product.productId != productId).toList();

    emit(updatedItems);
  }

  bool isInCart(int productId) {
    return state.any((product) => product.productId == productId);
  }
}
