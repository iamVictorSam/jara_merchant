// ignore: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'components/body.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(Icons.arrow_back_ios_new_rounded)),
      ),
      body: const ForgotBody(),
    );
  }
}
