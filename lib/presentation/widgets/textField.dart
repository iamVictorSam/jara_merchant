import 'package:flutter/material.dart';
import 'package:jara_merchant/presentation/helpers/constants.dart';

class TxtField extends StatelessWidget {
  String txt;
  TxtField({Key? key, required this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hoverColor: kWalletContainerBackgroundG,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(width: 0.8),
        ),
        hintText: txt,
        label: Text(txt),
      ),
    );
  }
}