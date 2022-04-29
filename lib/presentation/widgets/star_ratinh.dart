import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset('assets/star ratings.png'),
        Image.asset('assets/star ratings.png'),
        Image.asset('assets/star ratings.png'),
        Image.asset('assets/star ratings.png')
      ],
    );
  }
}
