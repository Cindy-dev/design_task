import 'package:faramove_test/community/utilities/community_image_strings.dart';
import 'package:faramove_test/community/utilities/community_strings.dart';
import 'package:faramove_test/community/widgets/community_appBar.dart';
import 'package:faramove_test/community/widgets/community_list.dart';
import 'package:faramove_test/home/utilities/divider.dart';
import 'package:flutter/material.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({Key? key}) : super(key: key);

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 150),
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
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),

          const CommunityAppBar(),
        ],
      ),
    );
  }
}
