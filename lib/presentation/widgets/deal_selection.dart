import 'package:flutter/material.dart';
class DealSelection extends StatelessWidget {
  Image image = Image.asset('');

  DealSelection({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.maxFinite,
      child: image,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: const Border(
              bottom: BorderSide(width: 0.5),
              top: BorderSide(width: 0.5),
              left: BorderSide(width: 0.5),
              right: BorderSide(width: 0.5))),
    );
  }
}