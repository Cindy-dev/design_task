import 'package:flutter/material.dart';
import '../../utilities/app_colors.dart';
import '../../utilities/textWidget.dart';
import '../utilities/home_strings.dart';

class HomeHorizontalTile extends StatelessWidget {
  const HomeHorizontalTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 10, left: 10),
            margin: const EdgeInsets.only(top: 10),
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: AppColors.peach,
            ),
            child: const TextWidget(
                text: HomeStrings.header1,
                weight: FontWeight.w500,
                size: 12,
                color: AppColors.textBlack),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10, left: 10),
            margin: const EdgeInsets.only(top: 10),
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: AppColors.lightP),
            child: const TextWidget(
                text: HomeStrings.header2,
                weight: FontWeight.w500,
                size: 12,
                color: AppColors.textBlack),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10, left: 10),
            margin: const EdgeInsets.only(top: 10),
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: AppColors.lightG),
            child: const TextWidget(
                text: HomeStrings.header3,
                weight: FontWeight.w500,
                size: 12,
                color: AppColors.textBlack),
          ),
        ],
      ),
    );
  }
}
