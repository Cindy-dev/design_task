import 'package:faramove_test/home/utilities/divider.dart';
import 'package:faramove_test/home/utilities/home_strings.dart';
import 'package:faramove_test/home/utilities/image_strings.dart';
import 'package:faramove_test/home/widgets/home_appBar.dart';
import 'package:faramove_test/home/widgets/home_card.dart';
import 'package:faramove_test/podcast/views/podcast_screen.dart';
import 'package:faramove_test/utilities/app_colors.dart';
import 'package:faramove_test/utilities/app_navigation.dart';
import 'package:faramove_test/utilities/device_size.dart';
import 'package:faramove_test/utilities/textWidget.dart';
import 'package:flutter/material.dart';

import '../widgets/home_horizontal_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = context.screenHeight();
    //final width = context.screenWidth();
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: const AlwaysScrollableScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: height / 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TextWidget(
                        text: HomeStrings.qActions,
                        weight: FontWeight.w700,
                        size: 16,
                        color: AppColors.textBlack),
                    const HomeCard(
                      header: HomeStrings.bSection,
                      subSection: HomeStrings.card1SSection,
                      cardColor: AppColors.yellow,
                      imageString: HomeImageStrings.stethoscope,
                    ),
                    // implementing navigating to the podcast screen from the diary card
                    GestureDetector(
                      onTap: () =>
                          navigatePushIos(context, const PodcastScreen()),
                      child: const HomeCard(
                          header: HomeStrings.diary,
                          subSection: HomeStrings.card2SSection,
                          cardColor: AppColors.orange,
                          imageString: HomeImageStrings.book),
                    ),
                    const HomeCard(
                        header: HomeStrings.vAssistant,
                        subSection: HomeStrings.card3SSection,
                        cardColor: AppColors.purple,
                        imageString: HomeImageStrings.headset),
                    const SizedBox(
                      height: 20,
                    ),
                    const AppDivider(),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, right: 5, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const TextWidget(
                              text: HomeStrings.uSession,
                              weight: FontWeight.w700,
                              size: 16,
                              color: AppColors.textBlack),
                          Image.asset(
                            HomeImageStrings.arrow,
                            fit: BoxFit.contain,
                            width: height / 30,
                          ),
                        ],
                      ),
                    ),
                    const AppDivider(),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, right: 5, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              TextWidget(
                                  text: HomeStrings.tips,
                                  weight: FontWeight.w700,
                                  size: 16,
                                  color: AppColors.textBlack),
                              SizedBox(
                                height: 2,
                              ),
                              TextWidget(
                                  text: HomeStrings.tSSection,
                                  weight: FontWeight.w400,
                                  size: 12,
                                  color: AppColors.gray),
                            ],
                          ),
                          Image.asset(
                            HomeImageStrings.arrow,
                            fit: BoxFit.contain,
                            width: height / 30,
                          ),
                        ],
                      ),
                    ),
                    const HomeHorizontalTile()
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: height / 8.5,
              ),
              width: double.infinity,
              color: AppColors.lightB.withOpacity(0.95),
              child: ListTile(
                leading: CircleAvatar(
                    backgroundColor: AppColors.lightBlue,
                    child: Image.asset(
                      HomeImageStrings.exclamation,
                      fit: BoxFit.contain,
                      width: height / 34,
                    )),
                title: const TextWidget(
                    text: HomeStrings.goTo,
                    weight: FontWeight.w500,
                    size: 13,
                    color: AppColors.textBlack),
                trailing: Image.asset(
                  HomeImageStrings.arrow,
                  fit: BoxFit.contain,
                  width: height / 34,
                ),
              ),
            ),
            const HomePageAppBar(),
          ],
        ));
  }
}
