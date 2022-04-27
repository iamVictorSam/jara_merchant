import 'package:flutter/material.dart';
class ProductDeal extends StatelessWidget {
  final Function() press;
  final String productName;
  final String price;
  Image image = Image.asset('');

  ProductDeal(
      {Key? key,
        required this.press,
        this.productName = '',
        required this.price,
        required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 165,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [image, Text(productName), Text(price)],
      ),
    );
  }
}