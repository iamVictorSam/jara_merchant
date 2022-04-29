import 'package:flutter/material.dart';
import '../../../helpers/constants.dart';
import '../../../widgets/star_ratinh.dart';
import '../../../widgets/view_stores_widget.dart';

class ViewStores extends StatefulWidget {
  const ViewStores({Key? key}) : super(key: key);

  @override
  _ViewStoresState createState() => _ViewStoresState();
}

class _ViewStoresState extends State<ViewStores> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
            ViewStoresWidget(image: Image.asset('assets/fitness studio.png'),  storeName: 'Fitness Center Yoga Studio', storeAddress: 'Lekki Phase 1, Lagos', stars: StarRating(),  rating: '4.5',  numOfPpleRated: '(23,450)', bio: 'We are a yoga studio\nthat holds sessions', ),
          ],
        ),
      ),
    );
  }
}
