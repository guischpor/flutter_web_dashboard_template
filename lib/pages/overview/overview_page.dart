import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard_template/constants/controllers.dart';
import 'package:flutter_web_dashboard_template/helpers/responsive_widget.dart';
import 'package:flutter_web_dashboard_template/widgets/custom_text.dart';
import 'package:get/get.dart';

import 'widgets/overview_cards_large_screen.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6,
                ),
                child: CustomText(
                  text: menuController.activeItem.value,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: const [
              OverviewCardLargeScreen(),
            ],
          ),
        ),
      ],
    );
  }
}
