import 'package:flutter/material.dart';
import 'package:madsolutionproject/Feture/home/data/model/product_model.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product Image
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              product.imageURL,
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          // Product Details
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Product Title
                Text(
                  product.category,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),

                const SizedBox(height: 4),

                // Shop/Restaurant Name
                Text(
                  product.productName,
                  style: TextStyle(color: Colors.grey[600], fontSize: 14),
                ),

                const SizedBox(height: 8),

                // Price
                Text(
                  '\$${product.price.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var products = ProductModel.productsList;
    return NestedScrollView(
      headerSliverBuilder:
          (context, innerBoxIsScrolled) => [
            SliverAppBar(
              pinned: true,
              floating: true,
              expandedHeight: 60,
              collapsedHeight: 60,
              toolbarHeight: 60,
              flexibleSpace: const CategoriesHorizontalList(),
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            ),
          ],
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(8),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 14,
                mainAxisSpacing: 14,
                childAspectRatio: 1,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) => ProductCard(product: products[index]),
                childCount: products.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoriesHorizontalList extends StatelessWidget {
  const CategoriesHorizontalList({super.key});

  final List<String> categories = const [
    'Shops',
    'Restaurants',
    'Café',
    'Fast Food',
    'Bakery',
    'Supermarket',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Chip(
              label: Text(categories[index]),
              backgroundColor:
                  index == 0
                      ? Theme.of(context).primaryColor
                      : Colors.grey[200],
              labelStyle: TextStyle(
                color: index == 0 ? Colors.white : Colors.black,
              ),
            ),
          );
        },
      ),
    );
  }
}

// باقي الكود (ProductCard و dummyProducts) يبقى كما هو
