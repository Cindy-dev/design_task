import 'package:faramove_test/community/utilities/community_image_strings.dart';
import 'package:faramove_test/community/utilities/community_strings.dart';
import 'package:faramove_test/utilities/app_colors.dart';
import 'package:faramove_test/utilities/textWidget.dart';
import 'package:flutter/material.dart';

class CommunityAppBar extends StatelessWidget {
  const CommunityAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white.withOpacity(0.95),
      padding: const EdgeInsets.only(top: 58, left: 20, right: 23, bottom: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         const TextWidget(
              text: CommunityStrings.community,
              weight: FontWeight.w600,
              size: 20,
              color: AppColors.textBlack),
         Image.asset(CommunityImageStrings.scope, height: 20,),
        ],
      ),
    );
  }
}
