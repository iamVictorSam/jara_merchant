import 'package:flutter/material.dart';
import 'package:jara_merchant/presentation/helpers/constants.dart';

import '../../../widgets/backArrow.dart';
import '../../../widgets/deal_selection.dart';
import '../../../widgets/pay_with.dart';
import '../../../widgets/textField.dart';
import '../../../widgets/text_field_date.dart';

class DealsInput extends StatelessWidget {
  const DealsInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: BackBut(
          press: () {},
        ),
        backgroundColor: kWhite,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                ' Create Deal',
                style: kHeaderTextSyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_outlined,
                      color: kGreen,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: kGreen,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              DealSelection(
                  image: Image.asset(
                    'assets/Lg Image.png',
                    fit: BoxFit.fill,
                  )),
              const SizedBox(height: 8,),
              const Text(
                'LG QNED 75” TV',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text('N795,000'),
              const Text(
                'Automatic Deal ID: 1379',
                style: kGreyText,
              ),
              const SizedBox(height: 15,),
              TxtField(
                txt: 'Area',
              ),
              const SizedBox(height: 10,),

              TxtField(
                txt: 'City',
              ),
              const SizedBox(height: 10,),
              TxtField(
                txt: 'Country',
              ),
              const SizedBox(height: 10,),
              TxtFieldDuration(
                txt: 'Deal duration',
              ),
              const SizedBox(height: 10,),
              TxtField(
                txt: 'Deal percentage of original price',
              ),
              const SizedBox(height: 10,),
              TxtField(
                txt: 'New product amount',
              ),
              const SizedBox(height: 10,),
              const PaymentOption(),
              const SizedBox(height: 10,),
              TxtField(txt: 'Quantity of deal available',),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Request promotion on this deal'),
                  Icon(Icons.album_outlined, color: kGreen,)
                ],
              ),
              const Text('Creating this deal will cost you N50 Niara per product', textAlign: TextAlign.start, style: TextStyle(color: Colors.red)
                ,),
              const SizedBox(height: 20,),

            ],
          ),
        ),
      ),
    );
  }
}

