import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Montserrat',
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(color: kGrey),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    labelStyle:
        TextStyle(fontSize: 12.sp, color: kGrey, fontWeight: FontWeight.w600),
    contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
    enabledBorder: outlineInputBorder,
    focusedBorder: enabledInputBorder(),
    border: outlineInputBorder,
  );
}

TextTheme textTheme() {
  return const TextTheme(
    bodyText1: TextStyle(color: kBlack),
    bodyText2: TextStyle(color: kBlack),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: kWhite,
    titleTextStyle: TextStyle(
      color: kBlack,
      fontSize: 18.sp,
      fontWeight: FontWeight.bold,
    ),
    centerTitle: true,
    elevation: 0,
    iconTheme: const IconThemeData(color: kGreen),
  );
}
