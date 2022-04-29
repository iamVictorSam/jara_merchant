import 'package:flutter/material.dart';

import '../../../helpers/constants.dart';
import '../../../widgets/defaultBtn.dart';
import '../../../widgets/productDeal.dart';


class UploadProductImageFromDevice extends StatefulWidget {
  const UploadProductImageFromDevice({Key? key}) : super(key: key);

  @override
  _UploadProductImageFromDeviceState createState() => _UploadProductImageFromDeviceState();
}

class _UploadProductImageFromDeviceState extends State<UploadProductImageFromDevice> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Icon(
            Icons.arrow_back_ios_outlined,
            color: kGreen,
          ), const Text(
            'Upload product images',
            style: kHeaderTextSyle,
          ),
          const SizedBox(height: 10,),
          const Text(
            'Upload multiple images from your mobile device and click on each image in order to add product details. Click on delete to unlist a product',
            textAlign: TextAlign.start,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              ProductDeal(press: (){}, productName: 'LG QNED 75 TV' , price: 'N795,000', image: Image.asset('assets/Lg TV.png',),),
              ProductDeal(press: (){}, productName: 'LG QNED 75 TV' , price: 'N795,000', image: Image.asset('assets/Lg TV.png',),),
              ProductDeal(press: (){}, productName: 'LG QNED 75 TV' , price: 'N795,000', image: Image.asset('assets/Lg TV.png',),),
            ],
          ),
          DefaultBtn(press:() {}, text: 'Upload images', color: kGreen, )
        ]
      ),
    ));
  }
}
