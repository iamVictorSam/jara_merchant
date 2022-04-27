import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jara_merchant/presentation/helpers/constants.dart';
import 'package:jara_merchant/presentation/screens/Authentication/signIn/components/signInForm.dart';

class SignInBody extends StatefulWidget {
  const SignInBody({Key? key}) : super(key: key);

  @override
  State<SignInBody> createState() => _SignInBodyState();
}

class _SignInBodyState extends State<SignInBody> {
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
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Text(
            'Login',
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            'Input your email address and password in order to access Jara.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12.sp),
          ),
          SizedBox(
            height: 40.h,
          ),
          const SignInForm(),
          SizedBox(
            height: 40.h,
          ),
          SizedBox(
            height: 40.h,
          ),
        ],
      ),
    ));
  }
}

class Card extends StatelessWidget {
  const Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // decoration: Box,
          color: kGreen,
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              const Expanded(
                child: FlutterLogo(),
                flex: 1,
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    const Text('Fitness Center Yoga Studio'),
                    const Text('Fitness Center Yoga Studio'),
                    Row(
                      children: const [
                        Text('* * * * *'),
                        Text('4.6'),
                        Text('(23,450)'),
                      ],
                    ),
                    const Text(
                        'Fitness Center Yoga Studio Fitness Center Yoga Studio'),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.all(8),
            color: kWhite,
            child: Column(
              children: [
                Text('N5000'),
                Text('per person'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
