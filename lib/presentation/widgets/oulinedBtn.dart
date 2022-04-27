import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helpers/constants.dart';

class OutlinedBtn extends StatelessWidget {
  final String image, title;
  final Color textColor;
  final Function() press;
  const OutlinedBtn(
      {Key? key,
      this.image = 'assets/facebook.png',
      this.title = 'title',
      this.textColor = kBlack,
      required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: kGrey),
          borderRadius: BorderRadius.circular(7)),
      child: ListTile(
        onTap: press,
        leading: Image.asset(image),
        title: Text(title,
            style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: 14.sp)),
      ),
    );
  }
}
