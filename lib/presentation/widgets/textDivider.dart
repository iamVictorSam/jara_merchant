import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jara_merchant/presentation/helpers/constants.dart';

class TextDiver extends StatelessWidget {
  final String text;
  const TextDiver({Key? key, this.text = 'OR'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 1,
            color: kGrey,
            width: double.maxFinite,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Text(
            text,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: kBlack, fontSize: 12.sp),
          ),
        ),
        Expanded(
          child: Container(
            height: 1,
            color: kGrey,
            width: double.maxFinite,
          ),
        ),
      ],
    );
  }
}
