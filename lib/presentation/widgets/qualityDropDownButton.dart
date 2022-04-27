import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QualityDropDOwnButton extends StatefulWidget {
  const QualityDropDOwnButton({Key? key}) : super(key: key);

  @override
  State<QualityDropDOwnButton> createState() => _QualityDropDOwnButtonState();
}

class _QualityDropDOwnButtonState extends State<QualityDropDOwnButton> {
  String? selectedValue = '1';
  List<String> items = [
    '1',
    '2',
    '3',
    '4',
    '5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        // height: 80.h,
        // width: 60.h,
        alignment: Alignment.center,
        child: DropdownButtonFormField<String>(
          decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
              enabledBorder: OutlineInputBorder(
                  gapPadding: 2,
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(width: 2, color: Colors.green))),
          value: selectedValue,
          items: items
              .map(
                (item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(item, style: TextStyle(fontSize: 12.sp))),
              )
              .toList(),
          onChanged: (item) => setState(() {
            selectedValue = item;
          }),
        ),
      )),
    );
  }
}
