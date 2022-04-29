import 'package:flutter/material.dart';
import '../../../helpers/constants.dart';
import '../../../widgets/add_product_image.dart';
import '../../../widgets/defaultBtn.dart';
class UploadProductImage extends StatefulWidget {
  const UploadProductImage({Key? key}) : super(key: key);

  @override
  _UploadProductImageState createState() => _UploadProductImageState();
}

class _UploadProductImageState extends State<UploadProductImage> {
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
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Upload product images',
              style: kHeaderTextSyle,
            ),
            const SizedBox(height: 10,),
            const Text(
              'Upload multiple images from your mobile device and click on each image in order to add product details',
              textAlign: TextAlign.start,
            ),
            const SizedBox(
              height: 50,
            ),
            const Center(child: AddImage()),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'You have no product images. Click on the button below to upload images from your device.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            DefaultBtn(press: (){}, text: 'Upload images', textColor: Colors.white, color: kGreen,),
          ],
        ),
      ),
    );
  }
}
