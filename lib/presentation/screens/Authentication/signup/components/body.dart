import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jara_merchant/presentation/helpers/constants.dart';
import 'package:jara_merchant/presentation/screens/Authentication/signup/components/signUpForm.dart';
import 'package:jara_merchant/presentation/widgets/oulinedBtn.dart';
import 'package:jara_merchant/presentation/widgets/textDivider.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: kPadding),
      child: Column(
        children: [
          SizedBox(
            height: 40.h,
          ),
          Image.asset('assets/logo.png'),
          SizedBox(
            height: 30.h,
          ),
          Text(
            'Sign Up',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18.sp, color: kBlack),
          ),
          SizedBox(
            height: 15.h,
          ),
          OutlinedBtn(
            press: () {},
            title: 'Sign Up with Google',
            textColor: kRed,
            image: 'assets/google.png',
          ),
          SizedBox(
            height: 10.h,
          ),
          OutlinedBtn(
            press: () {},
            title: 'Sign Up with Facebook',
            textColor: kBlue,
            image: 'assets/facebook.png',
          ),
          SizedBox(
            height: 10.h,
          ),
          OutlinedBtn(
            press: () {},
            title: 'Sign Up with Apple ID',
            image: 'assets/apple.png',
          ),
          SizedBox(
            height: 30.h,
          ),
          const TextDiver(),
          SizedBox(
            height: 30.h,
          ),
          const SignUpForm(),
        ],
      ),
    ));
  }
}
