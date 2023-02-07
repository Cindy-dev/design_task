import 'package:faramove_test/utilities/device_size.dart';
import 'package:flutter/material.dart';

import '../../utilities/app_colors.dart';
import '../../utilities/textWidget.dart';
import '../utilities/community_image_strings.dart';
import '../utilities/community_strings.dart';

class CommunityList extends StatelessWidget {
  final String image;
  final String header;
  const CommunityList({Key? key, required this.image, required this.header})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = context.screenHeight();
    final width = context.screenWidth();
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        //leading image
        Expanded(
          child: Image.asset(
            image,
            height: context.screenHeight() / 7,
          ),
        ),
        const SizedBox(
          width: 14,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                  text: header,
                  weight: FontWeight.w600,
                  size: 14,
                  color: AppColors.textBlack),
              const SizedBox(
                height: 7,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        CommunityImageStrings.person,
                        height: 15,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const TextWidget(
                          text: CommunityStrings.profileNumber,
                          weight: FontWeight.w600,
                          size: 14,
                          color: AppColors.textBlack),
                    ],
                  ),
                  const SizedBox(
                    width: 14.5,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        CommunityImageStrings.letter,
                        height: 15,
                      ),
                      const SizedBox(width: 8),
                      const TextWidget(
                          text: CommunityStrings.sNumber,
                          weight: FontWeight.w600,
                          size: 14,
                          color: AppColors.textBlack),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 11.71,
              ),
              //pictures of multiple users
              Image.asset(
                CommunityImageStrings.frame,
                height: 30,
              ),
            ],
          ),
        ),
        //join button
        Expanded(
          child: Container(
            margin: EdgeInsets.only(top: height / 10, right: 30),
            alignment: Alignment.center,
            height: height / 25,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: AppColors.darkBlue),
            child: const TextWidget(
                text: CommunityStrings.join,
                weight: FontWeight.w600,
                size: 12,
                color: AppColors.white),
          ),
        ),
      ],
    );
  }
}
