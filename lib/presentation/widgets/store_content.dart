import 'package:flutter/material.dart';

class StoreContent extends StatelessWidget {
  late String text, phoneNum, businessName;

  StoreContent(
      {Key? key, required this.businessName, required this.phoneNum, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(5),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text),
            Text(businessName),
            Text(phoneNum)
          ],
        ),
      ),
    );
  }
}
