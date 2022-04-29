import 'package:flutter/material.dart';

import '../helpers/constants.dart';

class ViewStoresWidget extends StatefulWidget {
  late Image image;
  late Widget stars;

  late String storeName,
      storeAddress,
      rating,
      numOfPpleRated,
      bio ;

  ViewStoresWidget({Key? key, required this.stars, required this.image, required this.bio, required this.numOfPpleRated, required this.rating, required this.storeAddress, required this.storeName}) : super(key: key);
  @override
  State<ViewStoresWidget> createState() => _ViewStoresWidgetState();
}

class _ViewStoresWidgetState extends State<ViewStoresWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: double.maxFinite,
        padding:const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: kWalletContainerBackgroundG,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            widget.image,
            const SizedBox(width: 12,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.storeName, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                Text(widget.storeAddress),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    widget.stars,
                    const SizedBox(width: 3,),
                    Text(widget.rating),
                    const SizedBox(width: 3,),
                    Text(widget.numOfPpleRated)
                  ],
                ),
                Text(widget.bio)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
