import 'package:flutter/material.dart';
import 'package:jara_merchant/presentation/helpers/constants.dart';

import '../../../widgets/backArrow.dart';
import '../../../widgets/productDeal.dart';

class CreateDeal extends StatefulWidget {
  @override
  _CreateDealState createState() => _CreateDealState();
}

class _CreateDealState extends State<CreateDeal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: BackBut(press: () { },),
        backgroundColor: kWhite,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              const Text(' Create Deal', style: kHeaderTextSyle,),
              const SizedBox(height: 8,),
              const Text('Click on the products that you wish to apply deals to in order to create deals for each of them. Click on delete to unlist a product.', textAlign: TextAlign.center, ),
              const SizedBox(height: 15,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  ProductDeal(press: (){}, productName: 'LG QNED 75 TV' , price: 'N795,000', image: Image.asset('assets/Lg TV.png',),),
                  ProductDeal(press: (){}, productName: 'LG QNED 75 TV' , price: 'N795,000', image: Image.asset('assets/Lg TV.png',),)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  ProductDeal(press: (){}, productName: 'LG QNED 75 TV' , price: 'N795,000', image: Image.asset('assets/Lg TV.png',),),
                  ProductDeal(press: (){}, productName: 'LG QNED 75 TV' , price: 'N795,000', image: Image.asset('assets/Lg TV.png',),)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  ProductDeal(press: (){}, productName: 'LG QNED 75 TV' , price: 'N795,000', image: Image.asset('assets/Lg TV.png',),),
                  ProductDeal(press: (){}, productName: 'LG QNED 75 TV' , price: 'N795,000', image: Image.asset('assets/Lg TV.png',),)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
