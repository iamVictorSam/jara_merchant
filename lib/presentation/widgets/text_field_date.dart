import 'package:flutter/material.dart';

import '../helpers/constants.dart';

class TxtFieldDuration extends StatelessWidget {
  String txt;

  TxtFieldDuration({Key? key, required this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon:IconButton(icon: Image.asset('images/calendar.png'), onPressed: () {  }, ),
        hoverColor: kWalletContainerBackgroundG,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(width: 0.8),
        ),
        label: Text(txt),
      ),
    );
  }
}