import 'package:flutter/material.dart';
import 'package:jara_merchant/presentation/helpers/constants.dart';

class BackBut extends StatelessWidget {
  final Function() press;

  const BackBut({Key? key, required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: press, icon: const Icon(Icons.arrow_back_ios_outlined, color: kGreen,));
  }
}
