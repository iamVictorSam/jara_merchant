import 'package:flutter/material.dart';
import '../../../helpers/constants.dart';
import '../../../widgets/defaultBtn.dart';

class DealBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text("Deals",
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                height: 80,
              ),
              Image.asset('assets/Group 1391.png'),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'You have no deals created yet. Click on the button below in order to create deals for your store(s)',
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 40,
              ),
              DefaultBtn(
                press: () {},
                text: 'Create Deal',
                color: kGreen,
              )
            ],
          ),
        ),
      ),
    );
  }
}
