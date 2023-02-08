import 'package:faramove_test/utilities/app_colors.dart';
import 'package:faramove_test/utilities/textWidget.dart';
import 'package:flutter/material.dart';

class Resources extends StatelessWidget {
  const Resources({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: TextWidget(
            text: "No Resources Available",
            weight: FontWeight.w700,
            size: 20,
            color: AppColors.textBlack),
      ),
    );
  }
}
