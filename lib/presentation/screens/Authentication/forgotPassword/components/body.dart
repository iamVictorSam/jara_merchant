import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jara_merchant/presentation/screens/Authentication/resetPassword/resetPassword.dart';
import 'package:jara_merchant/presentation/widgets/defaultBtn.dart';

import '../../../../helpers/constants.dart';

class ForgotBody extends StatefulWidget {
  const ForgotBody({Key? key}) : super(key: key);

  @override
  State<ForgotBody> createState() => _ForgotBodyState();
}

class _ForgotBodyState extends State<ForgotBody> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kPadding),
        child: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              SizedBox(height: 40.h),
              Image.asset('assets/logo.png'),
              SizedBox(height: 40.h),
              Image.asset(
                'assets/forgot.png',
              ),
              SizedBox(height: 10.h),
              Text(
                'Oops!\nForgot your password?',
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'That’s alright, don’t sweat it. We’ve got you covered. Kindly input your details below and we’ll email you a swift link.',
                style: TextStyle(
                  fontSize: 12.sp,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30.h,
              ),
              TextFormField(
                validator: (value) {
                  if (value != null && !EmailValidator.validate(value)) {
                    return 'Please enter a valid email';
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(label: Text('Email address')),
              ),
              SizedBox(
                height: 40.h,
              ),
              DefaultBtn(
                color: kGreen,
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
                                'assets/forgotEmailSent.svg',
                                height: 80.h,
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Text(
                                'Sent',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.sp),
                              ),
                              const Divider(
                                thickness: 0.5,
                                color: kGrey,
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Text(
                                "We’ve sent you an email with a swift link, click on the link to reset your password.",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 12.sp),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 25.w),
                                child: DefaultBtn(
                                  press: () {
                                    // Get.defaultDialog();
                                    Get.back();
                                    Get.to(() => const ResetPassword());
                                  },
                                  text: 'Go to Email',
                                ),
                              )
                            ],
                          ),
                        ));
                  }
                },
                text: 'Send Swift link',
              )
            ],
          ),
        ),
      ),
    );
  }
}
