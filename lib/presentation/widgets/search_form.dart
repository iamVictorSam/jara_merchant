// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: const Border(
            bottom: BorderSide(width: 1),
            top: BorderSide(width: 1),
            left: BorderSide(width: 1),
            right: BorderSide(width: 1),
          )),
      alignment: Alignment.centerLeft,
      child: TextFormField(
        onSaved: (value) {},
        decoration: InputDecoration(
          filled: true,
          border: InputBorder.none,
          fillColor: Colors.white54,
          hintText: "Search Jara",
          prefixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}
