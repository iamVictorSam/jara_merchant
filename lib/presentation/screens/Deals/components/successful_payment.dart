import 'package:flutter/material.dart';

import '../../../helpers/constants.dart';

class SuccessfulPayment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 8,
                ),
                CircleAvatar(
                    backgroundColor: kCircleAvatarColor,
                    radius: 32,
                    child: Image.asset('assets/success bullseye 1.png')),
                const Divider(
                  thickness: 0.7,
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Payment Successful',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "You have successfully completed payment for your deals. Now all you have to do is wait for the orders to come pouring in.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Continue Exploring',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Close',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
