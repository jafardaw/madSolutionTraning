import 'package:hive/hive.dart';
import 'package:madsolutionproject/Feture/home/data/model/product_model.dart';

class HiveHelper {
  static late Box<ProductModel> cartBox;

  static Future<void> init() async {
    cartBox = await Hive.openBox<ProductModel>('cartBox');
  }

  static Box<ProductModel> getCartBox() => cartBox;
}
