import 'package:flutter/material.dart';
import 'package:jara_merchant/presentation/widgets/defaultBtn.dart';
import 'package:jara_merchant/presentation/widgets/dropDownBtn.dart';
import '../../../helpers/constants.dart';
import '../../../widgets/add_product_button.dart';
import '../../../widgets/deal_selection.dart';
import '../../../widgets/textField.dart';

class AddProductDetails extends StatelessWidget {
  const AddProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios_outlined,
          color: kGreen,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Add Product Details',
                style: kHeaderTextSyle,
              ),
              const Text(
                'Add additional pictures to your upload and edit the details of each product in your store.',
                textAlign: TextAlign.start,
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DealSelection(
                      image: Image.asset(
                    'assets/Lg Image.png',
                    fit: BoxFit.fill,
                  )),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      AddButton(),
                      SizedBox(
                        height: 20,
                      ),
                      AddButton()
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              TxtField(
                txt: 'Product name',
              ),
              const SizedBox(
                height: 12,
              ),
              TxtField(
                txt: 'Price',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TxtField(txt: 'Quantity',),
                  DropdownField(selectedValue: 'Select Store/ Substore', items: const ['Store 1', 'Store 2 ', 'Store 3']),
                  DropdownField(selectedValue: 'Category', items: const ['Electronics', 'Clothing' ])
                ],
              ),
              TxtField(
                txt: 'Variants e.g. blue, Large, 50cm',
              ),
              DefaultBtn(press: (){}, text: 'Save Product', color: kGreen, textColor: Colors.white,),
              const SizedBox(height: 10,),
              DefaultBtn(press: (){}, textColor: Colors.black, color: Colors.white, text: 'Next product', )
            ],
          ),
        ),
      ),
    );
  }
}
