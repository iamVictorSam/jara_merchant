import 'package:flutter/material.dart';


class TimeDropDown extends StatefulWidget {
  @override
  _TimeDropDownState createState() => _TimeDropDownState();
}

class _TimeDropDownState extends State<TimeDropDown> {
  String? selectedValue = '1';
  List<String> items = [
    'Last 30 days',
    'Last 40 days',
    'Last 50 days',
    'Last 60 days',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
            height: 80,
            width: 130,
            alignment: Alignment.center,
            child: DropdownButtonFormField<String>(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(width: 2, color: Colors.green)
                  )
              ),
              value: selectedValue,
              items: items.map((item) =>
                  DropdownMenuItem<String>(
                      value: item,
                      child: Text(item, style: const TextStyle(fontSize: 12))
                  ),).toList(),
              onChanged: (item) =>
                  setState(() {
                    selectedValue = item;
                  }),
            ),
          )
      ),
    );
  }
}
