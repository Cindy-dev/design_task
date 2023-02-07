import 'package:faramove_test/home/utilities/divider.dart';
import 'package:faramove_test/home/utilities/home_strings.dart';
import 'package:faramove_test/home/utilities/image_strings.dart';
import 'package:faramove_test/home/widgets/home_appBar.dart';
import 'package:faramove_test/home/widgets/home_card.dart';
import 'package:faramove_test/utilities/app_colors.dart';
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
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HomePageAppBar(),
        Container(
          width: double.infinity,
          color: AppColors.lightB,
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
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(20),
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
                  const HomeCard(
                      header: HomeStrings.diary,
                      subSection: HomeStrings.card2SSection,
                      cardColor: AppColors.orange,
                      imageString: HomeImageStrings.book),
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
        ),
      ],
    ));
  }
}
