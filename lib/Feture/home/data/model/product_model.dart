import 'package:madsolutionproject/core/util/images_gen.dart';
import 'package:hive/hive.dart';

part 'product_model.g.dart'; // هذا الملف سيتولد تلقائيًا

@HiveType(typeId: 0)
class ProductModel extends HiveObject {
  @HiveField(0)
  final int productId;

  @HiveField(1)
  final int price;

  @HiveField(2)
  final String size;

  @HiveField(3)
  final double rating;

  @HiveField(4)
  final int humidity;

  @HiveField(5)
  final String measuerement;

  @HiveField(6)
  final String category;

  @HiveField(7)
  final String productName;

  @HiveField(8)
  final String imageURL;

  @HiveField(9)
  bool isFavorated;

  @HiveField(10)
  final String decription;

  @HiveField(11)
  bool isSelected;

  ProductModel({
    required this.productId,
    required this.price,
    required this.size,
    required this.rating,
    required this.humidity,
    required this.measuerement,
    required this.category,
    required this.productName,
    required this.imageURL,
    required this.isFavorated,
    required this.decription,
    required this.isSelected,
  });

  // class ProductModel {
  //   final int productId;
  //   final int price;
  //   final String size;
  //   final double rating;
  //   final int humidity;
  //   final String measuerement;
  //   final String category;
  //   final String productName;
  //   final String imageURL;
  //   bool isFavorated;
  //   final String decription;
  //   bool isSelected;

  //   ProductModel({
  //     required this.productId,
  //     required this.price,
  //     required this.category,
  //     required this.productName,
  //     required this.size,
  //     required this.rating,
  //     required this.humidity,
  //     required this.measuerement,
  //     required this.imageURL,
  //     required this.isFavorated,
  //     required this.decription,
  //     required this.isSelected,
  //   });

  //List of Products
  static List<ProductModel> productsList = [
    ProductModel(
      productId: 0,
      price: 22,
      category: 'Shoes',
      productName: 'Scins',
      size: 'Small',
      rating: 4.5,
      humidity: 34,
      measuerement: '23 - 34',
      imageURL: Assets.images1,
      isFavorated: false,
      decription:
          'This product is our best product and we offer products at the best prices with appropriate quality',
      isSelected: false,
    ),
    ProductModel(
      productId: 1,
      price: 11,
      category: 'Watche',
      productName: 'rolex',
      size: 'Medium',
      rating: 4.8,
      humidity: 56,
      measuerement: '19 - 22',
      imageURL: Assets.images2,
      isFavorated: false,
      decription:
          'This product is our best product and we offer products at the best prices with appropriate quality',
      isSelected: false,
    ),
    ProductModel(
      productId: 2,
      price: 18,
      category: 'Bags',
      productName: 'Guuses',
      size: 'Large',
      rating: 4.7,
      humidity: 34,
      measuerement: '22 - 25',
      imageURL: Assets.images3,
      isFavorated: false,
      decription:
          'This product is our best product and we offer products at the best prices with appropriate quality',
      isSelected: false,
    ),
    ProductModel(
      productId: 3,
      price: 30,
      category: 'Bags',
      productName: 'NareBane',
      size: 'Small',
      rating: 4.5,
      humidity: 35,
      measuerement: '23 - 28',
      imageURL: Assets.images5,
      isFavorated: false,
      decription:
          'This product is our best product and we offer products at the best prices with appropriate quality',
      isSelected: false,
    ),
    ProductModel(
      productId: 4,
      price: 24,
      category: 'Bags',
      productName: 'Big bag',
      size: 'Large',
      rating: 4.1,
      humidity: 66,
      measuerement: '12 - 16',
      imageURL: Assets.images4,
      isFavorated: true,
      decription:
          'This product is our best product and we offer products at the best prices with appropriate quality',
      isSelected: false,
    ),
    ProductModel(
      productId: 5,
      price: 24,
      category: 'Shoes',
      productName: 'MetaHane',
      size: 'Medium',
      rating: 4.4,
      humidity: 36,
      measuerement: '15 - 18',
      imageURL: Assets.images6,
      isFavorated: false,
      decription:
          'This product is our best product and we offer products at the best prices with appropriate quality',
      isSelected: false,
    ),
    ProductModel(
      productId: 6,
      price: 19,
      category: 'Nike',
      productName: 'Spore',
      size: 'Small',
      rating: 4.2,
      humidity: 46,
      measuerement: '23 - 26',
      imageURL: Assets.imagesShoz1,
      isFavorated: false,
      decription:
          'This product is our best product and we offer products at the best prices with appropriate quality',
      isSelected: false,
    ),
    ProductModel(
      productId: 7,
      price: 23,
      category: 'Nike',
      productName: 'SporeShek',
      size: 'Medium',
      rating: 4.5,
      humidity: 34,
      measuerement: '21 - 24',
      imageURL: Assets.imagesShoze2,
      isFavorated: false,
      decription:
          'This product is our best product and we offer products at the best prices with appropriate quality',
      isSelected: false,
    ),
    ProductModel(
      productId: 8,
      price: 46,
      category: 'Nike',
      productName: 'T_Shoes',
      size: 'Medium',
      rating: 4.7,
      humidity: 46,
      measuerement: '21 - 25',
      imageURL: Assets.imagesShoze3,
      isFavorated: false,
      decription:
          'This product is our best product and we offer products at the best prices with appropriate quality',
      isSelected: false,
    ),
    ProductModel(
      productId: 5,
      price: 24,
      category: 'llll',
      productName: 'MetaHane',
      size: 'Medium',
      rating: 4.4,
      humidity: 36,
      measuerement: '15 - 18',
      imageURL: Assets.images6,
      isFavorated: false,
      decription:
          'This product is our best product and we offer products at the best prices with appropriate quality',
      isSelected: false,
    ),
  ];
  final List<String> categories = const [
    'All',
    'Shops',
    'Restaurants',
    'Café',
    'Fast Food',
    'Bakery',
    'Supermarket',
  ];

  //Get the favorated items
  @override
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProductModel && other.productId == productId;
  }

  @override
  int get hashCode => productId.hashCode;
}
