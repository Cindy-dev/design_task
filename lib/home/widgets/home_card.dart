import 'package:faramove_test/utilities/app_colors.dart';
import 'package:faramove_test/utilities/device_size.dart';
import 'package:faramove_test/utilities/textWidget.dart';
import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final String header;
  final String subSection;
  final Color cardColor;
  final String imageString;
  const HomeCard(
      {Key? key,
      required this.header,
      required this.subSection,
      required this.cardColor,
      required this.imageString})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      padding: const EdgeInsets.only(top: 24, left: 16, bottom: 25, right: 20),
      alignment: Alignment.center,
      height: context.screenHeight() / 7.5,
      width: context.screenHeight() / 2.4,
      decoration: BoxDecoration(
          color: cardColor, borderRadius: BorderRadius.circular(6)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                  text: header,
                  weight: FontWeight.w600,
                  size: 14,
                  color: AppColors.white),
              const SizedBox(
                height: 6,
              ),
              TextWidget(
                  text: subSection,
                  weight: FontWeight.w500,
                  size: 12,
                  color: AppColors.white)
            ],
          ),
          Image.asset(imageString)
        ],
      ),
    );
  }
}
