import 'package:flutter/material.dart';
import '../../../helpers/constants.dart';
import '../../../widgets/store_content.dart';

class StoresBody extends StatefulWidget {
  const StoresBody({Key? key}) : super(key: key);

  @override
  _StoresBodyState createState() => _StoresBodyState();
}

class _StoresBodyState extends State<StoresBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_outlined, color: kGreen,),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                const Text("Stores", style: kHeaderTextSyle,),
                IconButton(onPressed: (){}, icon: Image.asset('images/filter icon.png'))
              ],
            ),
            const SizedBox(height: 10,),
            StoreContent(text: 'ID', businessName: 'Business Name', phoneNum: '08034687543', )
          ],
        ),
      ),
    );
  }
}

