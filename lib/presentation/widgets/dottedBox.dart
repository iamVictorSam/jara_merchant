import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class DottedBox extends StatelessWidget {
  final Widget child;
  const DottedBox({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
        borderType: BorderType.RRect,
        radius: const Radius.circular(7),
        padding: const EdgeInsets.all(6),
        child: child);
  }
}
