import 'package:flutter/material.dart';
import 'package:madsolutionproject/Feture/home/data/model/product_model.dart';
import 'package:madsolutionproject/core/constant.dart';
import 'package:madsolutionproject/core/utils/styel.dart';

class ListViewHorizental extends StatefulWidget {
  const ListViewHorizental({super.key});
  // final List<ProductModel> dummyProducts  ;

  @override
  State<ListViewHorizental> createState() => _ListViewCategoriesState();
}

class _ListViewCategoriesState extends State<ListViewHorizental> {
  @override
  Widget build(BuildContext context) {
    List<ProductModel> productsList = ProductModel.productsList;

    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * .3,
      child: ListView.builder(
        itemCount: productsList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              // Navigator.push(
              //     context,
              //     PageTransition(
              //         child: DetailPage(
              //           productsId: productsList[index].productId,
              //         ),
              //         type: PageTransitionType.bottomToTop));
            },
            child: ItemWithListHorizntal(index: index),
          );
        },
      ),
    );
  }
}

class ItemWithListHorizntal extends StatefulWidget {
  const ItemWithListHorizntal({super.key, required this.index});
  final int index;

  @override
  State<ItemWithListHorizntal> createState() => _ItemWithListHorizntalState();
}

class _ItemWithListHorizntalState extends State<ItemWithListHorizntal> {
  @override
  Widget build(BuildContext context) {
    List<ProductModel> productsList = ProductModel.productsList;
    bool toggleIsFavorated(bool isFavorited) {
      return !isFavorited;
    }

    return Container(
      width: 200,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: colorBlue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 10,
            right: 20,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    bool isFavorited = toggleIsFavorated(
                      productsList[widget.index].isFavorated,
                    );
                    productsList[widget.index].isFavorated = isFavorited;
                  });
                },
                icon: Icon(
                  productsList[widget.index].isFavorated == true
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color: colorBlue,
                ),
                iconSize: 30,
              ),
            ),
          ),
          Positioned(
            left: 50,
            right: 50,
            top: 50,
            bottom: 50,
            child: Image.asset(productsList[widget.index].imageURL),
          ),
          Positioned(
            bottom: 15,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productsList[widget.index].category,
                  style: const TextStyle(color: Colors.white70, fontSize: 16),
                ),
                Text(
                  productsList[widget.index].productName,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 15,
            right: 20,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                r'$' + productsList[widget.index].price.toString(),
                style: AppTextStyles.calibri16BoldWhite,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
