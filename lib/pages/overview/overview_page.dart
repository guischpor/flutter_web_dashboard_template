import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard_template/constants/controllers.dart';
import 'package:flutter_web_dashboard_template/helpers/responsive_widget.dart';
import 'package:flutter_web_dashboard_template/pages/overview/widgets/overview_cards_large_screen.dart';
import 'package:flutter_web_dashboard_template/pages/overview/widgets/overview_cards_medium_screen.dart';
import 'package:flutter_web_dashboard_template/pages/overview/widgets/overview_cards_small_screen.dart';
import 'package:flutter_web_dashboard_template/widgets/custom_text.dart';
import 'package:get/get.dart';

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
            children: [
              if (ResponsiveWidget.isLargeScreen(context) ||
                  ResponsiveWidget.isMediumScreen(context))
                if (ResponsiveWidget.isCustomScreen(context))
                  const OverViewCardMediumScreen()
                else
                  const OverviewCardLargeScreen()
              else
                const OverviewCardSmallScreen(),
            ],
          ),
        ),
      ],
    );
  }
}
