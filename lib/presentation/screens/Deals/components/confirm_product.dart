import 'package:flutter/material.dart';

import '../../../helpers/constants.dart';

class ConfirmProduct extends StatefulWidget {
  const ConfirmProduct({Key? key}) : super(key: key);

  @override
  _ConfirmProductState createState() => _ConfirmProductState();
}

class _ConfirmProductState extends State<ConfirmProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios_outlined,
          color: kGreen,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Confirm the details of the products you have added to your store.')
          ],
        ),
      ),
    );
  }
}
