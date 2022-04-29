import 'package:flutter/material.dart';

import '../helpers/constants.dart';

class AddButton extends StatelessWidget {
  const AddButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        alignment: Alignment.center,
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: kCircleAvatarColor,
        ),
        child: Image.asset('images/add image icon.png',),
      ),
    );
  }
}
