import 'package:faramove_test/podcast/utilities/podcast_image_string.dart';
import 'package:faramove_test/podcast/utilities/podcast_string.dart';
import 'package:faramove_test/podcast/widgets/podcast_appbar.dart';
import 'package:faramove_test/utilities/app_colors.dart';
import 'package:faramove_test/utilities/device_size.dart';
import 'package:flutter/material.dart';
import '../../utilities/textWidget.dart';

class PodcastScreen extends StatelessWidget {
  const PodcastScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const PodcastAppBar(),
            Image.asset(
              PodcastImageString.stay,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32, bottom: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TextWidget(
                      text: PodcastString.reasons,
                      weight: FontWeight.w700,
                      size: 16,
                      color: AppColors.textBlack),
                  Image.asset(
                    PodcastImageString.speaker,
                    height: 20,
                  ),
                ],
              ),
            ),
            const TextWidget(
                text: PodcastString.sName,
                weight: FontWeight.w400,
                size: 14,
                color: AppColors.gray),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              PodcastImageString.slideBar,
              height: 14,
              fit: BoxFit.fitWidth,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4, bottom: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  TextWidget(
                      text: PodcastString.no1,
                      weight: FontWeight.w500,
                      size: 12,
                      color: AppColors.textBlack),
                  TextWidget(
                      text: PodcastString.no2,
                      weight: FontWeight.w500,
                      size: 12,
                      color: AppColors.textBlack),
                ],
              ),
            ),
            Row(
              children: [
                const TextWidget(
                    text: PodcastString.speed,
                    weight: FontWeight.w600,
                    size: 16,
                    color: AppColors.textBlack),
                const SizedBox(
                  width: 75,
                ),
                Image.asset(
                  PodcastImageString.musicPlay,
                  alignment: Alignment.center,
                  height: context.screenHeight() / 10,
                ),
              ],
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
              height: context.screenHeight() / 13,
              decoration: BoxDecoration(
                color: AppColors.darkBlue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TextWidget(
                      text: PodcastString.tScript,
                      weight: FontWeight.w600,
                      size: 15,
                      color: AppColors.white),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 9),
                    decoration: BoxDecoration(
                      color: AppColors.lightBlue.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        const TextWidget(
                            text: PodcastString.expand,
                            weight: FontWeight.w700,
                            size: 12,
                            color: AppColors.white),
                        const SizedBox(
                          width: 5,
                        ),
                        Image.asset(
                          PodcastImageString.share,
                          height: 16,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
