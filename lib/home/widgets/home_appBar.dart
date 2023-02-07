import 'package:faramove_test/home/utilities/home_strings.dart';
import 'package:faramove_test/home/utilities/image_strings.dart';
import 'package:faramove_test/utilities/app_colors.dart';
import 'package:faramove_test/utilities/device_size.dart';
import 'package:faramove_test/utilities/textWidget.dart';
import 'package:flutter/material.dart';

class HomePageAppBar extends StatelessWidget {
  const HomePageAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = context.screenHeight();
    return Padding(
        padding:
            EdgeInsets.only(top: height / 15, left: 20, right: 15, bottom: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                    margin: const EdgeInsets.only(right: 12),
                    height: context.screenHeight() / 25,
                    child: Image.asset(HomeImageStrings.userDP)),
                const TextWidget(
                    text: HomeStrings.greeting,
                    weight: FontWeight.w600,
                    size: 20,
                    color: AppColors.textBlack)
              ],
            ),
            Row(
              children: [
                Container(
                    margin: const EdgeInsets.only(right: 24),
                    height: context.screenHeight() / 30,
                    child: Image.asset(HomeImageStrings.chat)),
                Container(
                    height: context.screenHeight() / 30,
                    child: Image.asset(HomeImageStrings.notification)),
              ],
            )
          ],
        ));
  }
}
