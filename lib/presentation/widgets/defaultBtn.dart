import 'package:flutter/material.dart';
import 'package:jara_merchant/presentation/helpers/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefaultBtn extends StatelessWidget {
  final Color color, textColor;
  final String text;
  final Function() press;
  const DefaultBtn(
      {Key? key,
      this.color = kBlack,
      this.textColor = kWhite,
      this.text = 'text',
      required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: double.infinity,
        height: 55.h,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(text,
              style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.sp)),
        ),
      ),
    );
  }
}
