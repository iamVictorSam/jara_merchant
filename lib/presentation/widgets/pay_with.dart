import 'package:flutter/material.dart';
class PaymentOption extends StatelessWidget {
  const PaymentOption({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Pay with:'),
        Image.asset('assets/card image.png'),
        Image.asset('assets/jara points.png'),
        Image.asset('assets/wallet.png'),
      ],
    );
  }
}
