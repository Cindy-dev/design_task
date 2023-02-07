import 'package:flutter/material.dart';

import 'app_strings.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final FontWeight weight;
  final double size;
  final Color color;
  const TextWidget(
      {Key? key,
      required this.text,
      required this.weight,
      required this.size,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: AppStrings.fontName,
          fontWeight: weight,
          fontSize: size,
          color: color),
    );
  }
}
