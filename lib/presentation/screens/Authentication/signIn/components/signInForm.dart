import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:email_validator/email_validator.dart';
import 'package:get/get.dart';
import 'package:jara_merchant/presentation/helpers/constants.dart';
import 'package:jara_merchant/presentation/widgets/defaultBtn.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value != null && !EmailValidator.validate(value)) {
                return 'Please enter a valid email';
              } else {
                return null;
              }
            },
            decoration: const InputDecoration(
              label: Text('Email address'),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            validator: (value) {
              if (value != null && value.length < 7) {
                return 'Enter min. 7 character';
              } else {
                return null;
              }
            },
            decoration: InputDecoration(
              label: const Text('Password'),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.remove_red_eye_sharp,
                  color: kGrey,
                  size: 30.h,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          DefaultBtn(
            press: () {
              final isFormValid = formKey.currentState!.validate();

              if (isFormValid) {
                // Get.to(() => const Profile());
              }
            },
            text: 'Confirm',
            color: kGreen,
          ),
          SizedBox(
            height: 5.h,
          ),
        ],
      ),
    );
  }
}
