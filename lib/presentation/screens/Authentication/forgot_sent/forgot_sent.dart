import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jara_merchant/presentation/helpers/constants.dart';
import 'package:jara_merchant/presentation/widgets/defaultBtn.dart';

class ForgotSent extends StatefulWidget {
  const ForgotSent({Key? key}) : super(key: key);

  @override
  State<ForgotSent> createState() => _ForgotSentState();
}

class _ForgotSentState extends State<ForgotSent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
          child: Column(
        children: [
          SvgPicture.asset('assets/forgotEmailSent.svg'),
          const Text(
            'Sent!',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const Divider(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kPadding),
            child: const Text(
                'We’ve sent you an email with a swift link, click on the link to reset your password.'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kPadding),
            child: DefaultBtn(
              press: () {},
              text: 'Goto Email',
            ),
          )
        ],
      )),
    );
  }
}
