import 'package:faramove_test/community/utilities/community_image_strings.dart';
import 'package:faramove_test/community/utilities/community_strings.dart';
import 'package:faramove_test/community/widgets/community_appBar.dart';
import 'package:faramove_test/community/widgets/community_list.dart';
import 'package:faramove_test/home/utilities/divider.dart';
import 'package:flutter/material.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CommunityAppBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  children: const [
                    CommunityList(
                      image: CommunityImageStrings.card1,
                      header: CommunityStrings.tile1,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    AppDivider(),
                    SizedBox(
                      height: 10,
                    ),
                    CommunityList(
                      image: CommunityImageStrings.card2,
                      header: CommunityStrings.title2,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    AppDivider(),
                    SizedBox(
                      height: 10,
                    ),
                    CommunityList(
                      image: CommunityImageStrings.card3,
                      header: CommunityStrings.title3,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    AppDivider(),
                    SizedBox(
                      height: 10,
                    ),
                    CommunityList(
                      image: CommunityImageStrings.card4,
                      header: CommunityStrings.title4,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    AppDivider(),
                    SizedBox(
                      height: 10,
                    ),
                    CommunityList(
                      image: CommunityImageStrings.card5,
                      header: CommunityStrings.title5,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
