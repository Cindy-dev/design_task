import 'package:faramove_test/podcast/utilities/podcast_image_string.dart';
import 'package:faramove_test/podcast/utilities/podcast_string.dart';
import 'package:faramove_test/utilities/device_size.dart';
import 'package:flutter/material.dart';
import '../../utilities/app_colors.dart';
import '../../utilities/textWidget.dart';

class PodcastAppBar extends StatelessWidget {
  const PodcastAppBar({Key? key}) : super(key: key);

  @override
    Widget build(BuildContext context) {
      final height = context.screenHeight();
      return Padding(
          padding: EdgeInsets.only(
              top: height / 15, bottom: 38),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(PodcastImageString.arrowDown, height: 15,),
                const SizedBox(width: 13,),
                  const TextWidget(
                      text: PodcastString.header,
                      weight: FontWeight.w600,
                      size: 18,
                      color: AppColors.textBlack)
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.bookmark_border_outlined),
                  SizedBox(width: 22,),
                 Icon(Icons.save_alt_outlined),
                ],
              )
            ],
          ));

  }
}
