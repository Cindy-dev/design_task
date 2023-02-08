import 'package:faramove_test/podcast/utilities/podcast_image_string.dart';
import 'package:faramove_test/podcast/utilities/podcast_string.dart';
import 'package:faramove_test/utilities/app_navigation.dart';
import 'package:faramove_test/utilities/device_size.dart';
import 'package:flutter/material.dart';
import '../../utilities/app_colors.dart';
import '../../utilities/textWidget.dart';

class PodcastAppBar extends StatefulWidget {
  const PodcastAppBar({Key? key}) : super(key: key);

  @override
  State<PodcastAppBar> createState() => _PodcastAppBarState();
}

class _PodcastAppBarState extends State<PodcastAppBar> {
  //Creating a variable to handle the on tap process if the bookmark button
  String selected = '';
  @override
  Widget build(BuildContext context) {
    final height = context.screenHeight();
    return Padding(
        padding: EdgeInsets.only(top: height / 15, bottom: 38),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () => navigatePop(context),
                  child: Image.asset(
                    PodcastImageString.arrowDown,
                    height: 15,
                  ),
                ),
                const SizedBox(
                  width: 13,
                ),
                const TextWidget(
                    text: PodcastString.header,
                    weight: FontWeight.w600,
                    size: 18,
                    color: AppColors.textBlack)
              ],
            ),
            Row(
              children: [
                GestureDetector(
                    onTap: () {
                      //when the button is clicked reloading the state and giving the variable created an identifier
                      setState(() {
                        selected = 'clicked';
                      });
                    },
                    // setting back the variable to its default value after
                    onDoubleTap: () {
                      setState(() {
                        selected = "";
                      });
                    },
                    //with the identifier stored in the variable this helps in displaying that a gesture occurred on the button
                    child: selected == "clicked"
                        ? const Icon(
                            Icons.bookmark,
                            color: Colors.red,
                          )
                        : const Icon(Icons.bookmark_border_outlined)),
                const SizedBox(
                  width: 22,
                ),
                const Icon(Icons.save_alt_outlined),
              ],
            )
          ],
        ));
  }
}
