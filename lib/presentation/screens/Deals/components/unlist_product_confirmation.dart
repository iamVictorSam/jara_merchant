import 'package:flutter/material.dart';

import '../../../helpers/constants.dart';
class DeleteProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: 400,
          width: 300,
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [CircleAvatar(
              maxRadius: 40,
              backgroundColor: kCircleAvatarColor,
              child: Image.asset('assets/dustbin 2.png'),
            ),
              const SizedBox(height: 8,),
             const Text('Unlist Product', style: kHeaderTextSyle,),
              const Divider(indent: 20, endIndent: 20, thickness: 1,),
              const SizedBox(height: 20,),
              const Text('Are you sure you want to unlist this product?', style: TextStyle(fontSize: 15),textAlign: TextAlign.center,),
              const SizedBox(height: 30,),
              Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                      color: kGreen,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child:TextButton(onPressed: (){}, child: const Text('Yes, Unlist',style: TextStyle(color: Colors.white),), )

              ),
              TextButton(onPressed: (){}, child: const Text('No, please go back',style: TextStyle(color: Colors.black),), )
            ],
          ),
        ),
      ),
    );
  }
}
