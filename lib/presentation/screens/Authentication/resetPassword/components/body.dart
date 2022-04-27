import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../helpers/constants.dart';
import 'resetForm.dart';

class ResetBody extends StatefulWidget {
  const ResetBody({Key? key}) : super(key: key);

  @override
  State<ResetBody> createState() => _ResetBodyState();
}

class _ResetBodyState extends State<ResetBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: kPadding),
      child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Image.asset('assets/logo.png'),
          SizedBox(
            height: 30.h,
          ),
          Text(
            'Reset your password',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            'Kindly input your password details',
            style: TextStyle(fontSize: 13.sp),
          ),
          SizedBox(
            height: 70.h,
          ),
          const ResetForm(),
        ],
      ),
    ));
  }
}
