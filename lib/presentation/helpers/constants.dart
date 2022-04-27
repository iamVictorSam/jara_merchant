import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const kGreen = Color(0xff009933);
const kWhite = Color(0xffFFFFFF);
const kRed = Color(0xffF82020);
const kBlue = Color(0xff3A77EE);
const kPurple = Color(0xff6039F1);
const kSet = Color(0xffF2F2F2);

const kBlack = Color(0xff000000);
const kGrey = Color(0xffC4C4C4);
const headStyle = TextStyle(
  color: kGrey,
  fontSize: 15,
  fontWeight: FontWeight.bold,
);
const kGreyText = TextStyle(color: Color(0xff808080));

final kGreenLight = const Color(0xFF009933).withOpacity(0.5);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFF07498B), Color(0xFF042c54)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);
const kStyle =
    TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: kBlack);

final headingStyle = TextStyle(
  fontSize: 28.sp,
  fontWeight: FontWeight.bold,
  color: Colors.white,
  height: 1.5,
);
const divide = Divider(
  color: kGrey,
  // height: 1,
  thickness: 1,
);
const kHeaderTextSyle = TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold);
const defaultDuration = Duration(milliseconds: 250);
final kPadding = 20.w;

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kFnameNullError = "Please Enter your First name";
const String kLnameNullError = "Please Enter your Last name";
const String kUsernameNullError = "Please Enter your Username";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final textFieldDecoration = InputDecoration(
  labelStyle: const TextStyle(
    color: kGrey,
  ),
  hintStyle: const TextStyle(
    color: kGrey,
  ),
  // floatingLabelBehavior: FloatingLabelAlignment.,
  floatingLabelStyle: const TextStyle(
    color: kGrey,
  ),
  contentPadding: EdgeInsets.symmetric(vertical: 15.h),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: enabledInputBorder(),
);

OutlineInputBorder enabledInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(6),
    borderSide: const BorderSide(color: kGreen),
  );
}

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(6),
    borderSide: const BorderSide(color: kGrey),
  );
}

const OutlineInputBorder koutlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(50)),
    gapPadding: 10,
    borderSide: BorderSide(color: kGrey, width: 1, style: BorderStyle.solid));

const kContainerBackground = Color(0xff657989);
const kWalletContainerBackgroundG = Color(0xffABA7A7);
const kContainerBackgroundW = Color(0xffF2F2F2);
const knotificationButtonColor = Color(0xffC2E0CC);
const kTextSyleW = TextStyle(color: Colors.white, fontSize: 14);
