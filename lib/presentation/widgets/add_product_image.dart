import 'package:flutter/material.dart';

class AddImage extends StatelessWidget {
  const AddImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: SizedBox(
        height: 150,
        width: 150,
        child: Image.asset('assets/add image.png', fit: BoxFit.cover,),
      ),
    );
  }
}
