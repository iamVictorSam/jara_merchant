import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:email_validator/email_validator.dart';

import 'package:get/get.dart';
import 'package:jara_merchant/presentation/helpers/constants.dart';
import 'package:jara_merchant/presentation/widgets/defaultBtn.dart';
import 'package:jara_merchant/presentation/widgets/dropDownBtn.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
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
              SizedBox(
                height: 30.h,
              ),
              SvgPicture.asset('assets/editProfile.svg'),
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      validator: (value) {
                        if (value != null && value.length < 2) {
                          return 'Please enter a valid name';
                        } else {
                          return null;
                        }
                      },
                      decoration:
                          const InputDecoration(label: Text('First name')),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    child: TextFormField(
                      validator: (value) {
                        if (value != null && value.length < 2) {
                          return 'Please enter a valid name';
                        } else {
                          return null;
                        }
                      },
                      decoration:
                          const InputDecoration(label: Text('Last name')),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              TextFormField(
                validator: (value) {
                  if (value != null && value.length < 11) {
                    return 'Please enter a valid phone number';
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(label: Text('Phone number')),
              ),
              SizedBox(
                height: 10.h,
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
                height: 10.h,
              ),
              TextFormField(
                validator: (value) {
                  if (value != null && value.length < 7) {
                    return 'Enter min. 7 character';
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(label: Text('Password')),
              ),
              SizedBox(
                height: 10.h,
              ),
              DropdownField(selectedValue: 'selectedValue', items: const [
                'Mother maiden\'s name',
                'Nursery school attended',
                'Church\' name'
              ]),
              SizedBox(
                height: 10.h,
              ),
              TextFormField(
                validator: (value) {
                  if (value == null) {
                    return 'Please enter a valid response';
                  } else {
                    return null;
                  }
                },
                decoration:
                    const InputDecoration(label: Text('Input your response')),
              ),
              SizedBox(
                height: 40.h,
              ),
              DefaultBtn(
                press: () {
                  final isFormValid = formKey.currentState!.validate();

                  if (isFormValid) {
                    // Get.offAll(() => const HomePage());
                  }
                },
                text: 'Save',
                color: kGreen,
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
