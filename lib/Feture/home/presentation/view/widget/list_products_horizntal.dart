// class ItemWithListHorizntal extends StatefulWidget {
//   const ItemWithListHorizntal({super.key, required this.productModel});
//   final ProductModel productModel;

//   @override
//   State<ItemWithListHorizntal> createState() => _ItemWithListHorizntalState();
// }

// class _ItemWithListHorizntalState extends State<ItemWithListHorizntal> {
//   @override
//   Widget build(BuildContext context) {
//     ProductModel productmodel = widget.productModel;

//     bool toggleIsFavorated(bool isFavorited) {
//       return !isFavorited;
//     }

//     return Container(
//       width: 200,
//       margin: const EdgeInsets.symmetric(horizontal: 10),
//       decoration: BoxDecoration(
//         color: kpraimarywhite,
//         borderRadius: BorderRadius.circular(20),
//         boxShadow: [
//           BoxShadow(color: kpraimaryblack, blurRadius: 10, spreadRadius: 2),
//         ],
//         border: Border.all(color: kpraimarylightGrey, width: 1),
//       ),
//       child: Stack(
//         children: [
//           // الخلفية الزرقاء
//           Positioned.fill(
//             child: Container(
//               decoration: BoxDecoration(
//                 color: kpraimaryprimaryBlue,
//                 borderRadius: BorderRadius.circular(20),
//                 gradient: LinearGradient(
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter,
//                   colors: [kpraimaryprimaryBlue, kpraimarycolorBlue],
//                 ),
//               ),
//             ),
//           ),

//           Positioned(
//             top: 10,
//             right: 10,
//             child: Container(
//               height: 40,
//               width: 40,
//               decoration: BoxDecoration(
//                 color: kpraimarywhite,
//                 shape: BoxShape.circle,
//                 boxShadow: [BoxShadow(color: kpraimaryblack, blurRadius: 5)],
//               ),
//               child: IconButton(
//                 onPressed: () {
//                   setState(() {
//                     productmodel.isFavorated = toggleIsFavorated(
//                       productmodel.isFavorated,
//                     );
//                   });
//                 },
//                 icon: Icon(
//                   productmodel.isFavorated
//                       ? Icons.favorite
//                       : Icons.favorite_border,
//                   color: kpraimaryprimaryBlue,
//                   size: 20,
//                 ),
//               ),
//             ),
//           ),

//           Positioned(
//             left: 30,
//             right: 30,
//             top: 40,
//             bottom: 60,
//             child: Image.asset(productmodel.imageURL, fit: BoxFit.contain),
//           ),

//           Positioned(
//             bottom: 15,
//             left: 15,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   productmodel.category,
//                   style: TextStyle(color: kpraimarywhite, fontSize: 14),
//                 ),
//                 const SizedBox(height: 4),
//                 Text(
//                   productmodel.productName,
//                   style: TextStyle(
//                     color: kpraimarywhite,
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//           ),

//           Positioned(
//             bottom: 15,
//             right: 15,
//             child: Container(
//               padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
//               decoration: BoxDecoration(
//                 color: kpraimarywhite,
//                 borderRadius: BorderRadius.circular(20),
//                 boxShadow: [BoxShadow(color: kpraimaryblack, blurRadius: 5)],
//               ),
//               child: Text(
//                 '\$${productmodel.price.toStringAsFixed(2)}',
//                 style: TextStyle(
//                   color: kpraimaryprimaryBlue,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 14,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
