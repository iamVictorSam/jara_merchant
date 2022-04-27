import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:jara_merchant/presentation/helpers/constants.dart';
import 'package:jara_merchant/presentation/widgets/defaultBtn.dart';

class ResetForm extends StatefulWidget {
  const ResetForm({Key? key}) : super(key: key);

  @override
  State<ResetForm> createState() => _ResetFormState();
}

class _ResetFormState extends State<ResetForm> {
  final formKey = GlobalKey<FormState>();
  bool isOpen = false;
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          TextFormField(
            validator: (value) {
              if (value != null && value.length < 7) {
                return 'Enter min. 7 character';
              } else {
                return null;
              }
            },
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              label: Text('New Password'),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          TextFormField(
            validator: (value) {
              if (value != null && value.length < 7) {
                return 'Enter min. 7 character';
              } else if (password.text != confirmPassword.text) {
                return 'Password mismatch';
              } else {
                return null;
              }
            },
            keyboardType: TextInputType.visiblePassword,
            decoration: const InputDecoration(
              label: Text('Confirm Password'),
            ),
          ),
          SizedBox(
            height: 60.h,
          ),
          DefaultBtn(
            press: () {
              final isFormValid = formKey.currentState!.validate();

              if (isFormValid) {
                Get.defaultDialog(
                    radius: 10,
                    title: '',
                    content: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            'assets/passwordRest.svg',
                            height: 50.h,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Text(
                            'Password Reset successful',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.sp),
                          ),
                          const Divider(
                            thickness: 0.5,
                            color: kGrey,
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Text(
                            "You can now continue searching for deals and saving as you shop on Jara.",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12.sp),
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25.w),
                            child: DefaultBtn(
                              press: () {
                                // Get.defaultDialog();
                              },
                              color: kGreen,
                              text: 'Continue',
                            ),
                          )
                        ],
                      ),
                    ));
              }
            },
            text: 'Reset',
            color: kGreen,
          ),
        ],
      ),
    );
  }
}
