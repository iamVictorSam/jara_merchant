import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jara_merchant/presentation/helpers/constants.dart';

class DropdownField extends StatelessWidget {
  late final String selectedValue;
  final String title, validate;
  final List items;
  final IconData icon;
  final Color iconColor;
  // ignore: prefer_const_constructors_in_immutables
  DropdownField({
    Key? key,
    required this.selectedValue,
    required this.items,
    this.title = 'Select',
    this.icon = Icons.arrow_drop_down,
    this.iconColor = kBlack,
    this.validate = 'Please select Item.',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2(
      decoration: InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.zero,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        // contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
      ),
      isExpanded: true,
      hint: Text(
        title,
        style: TextStyle(fontSize: 10.sp, color: kGrey),
      ),
      icon: Icon(
        icon,
        color: iconColor,
      ),
      iconSize: 30,
      buttonHeight: 60,
      buttonPadding: const EdgeInsets.only(left: 20, right: 10),
      dropdownDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      items: items
          .map((item) => DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  style:
                      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
                ),
              ))
          .toList(),
      validator: (value) {
        if (value == null) {
          return validate;
        }
        return null;
      },
      onChanged: (value) {
        //Do something when changing the item if you want.
        // print(value);
      },
      onSaved: (value) {
        selectedValue = value.toString();
        // print(selectedValue);
      },
    );
  }
}
