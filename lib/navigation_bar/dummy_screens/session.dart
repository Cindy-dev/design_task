import 'package:flutter/material.dart';

import '../../utilities/app_colors.dart';
import '../../utilities/textWidget.dart';

class Session extends StatelessWidget {
  const Session({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: TextWidget(
            text: "Session Unavailable",
            weight: FontWeight.w700,
            size: 20,
            color: AppColors.textBlack),
      ),
    );
  }
}
