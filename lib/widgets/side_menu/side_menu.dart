import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard_template/constants/controllers.dart';
import 'package:flutter_web_dashboard_template/constants/web_colors.dart';
import 'package:flutter_web_dashboard_template/helpers/responsive_widget.dart';
import 'package:flutter_web_dashboard_template/routes/routes.dart';
import 'package:flutter_web_dashboard_template/widgets/custom_text.dart';
import 'package:flutter_web_dashboard_template/widgets/side_menu/side_menu_item.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _widht = MediaQuery.of(context).size.width;
    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 40),
                Row(
                  children: [
                    SizedBox(width: _widht / 48),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Image.asset('assets/images/logo.png'),
                    ),
                    Flexible(
                      child: CustomText(
                        text: 'Dashboard',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: active,
                      ),
                    ),
                    SizedBox(width: _widht / 48),
                  ],
                )
              ],
            ),
          const SizedBox(height: 40),
          Divider(color: lightGrey.withOpacity(.1)),
          Column(
              mainAxisSize: MainAxisSize.min,
              children: sideMenuItems
                  .map(
                    (itemName) => SideMenuItem(
                      itemName: itemName == authenticationPageRoute
                          ? "Log Out"
                          : itemName,
                      onTap: () {
                        if (itemName == authenticationPageRoute) {
                          // TODO: go to authentication page
                        }

                        if (!menuController.isActive(itemName)) {
                          menuController.changeActiveItem(itemName);
                          if (ResponsiveWidget.isSmallScreen(context)) {
                            Get.back();
                            // TODO: go to itemName route
                          }
                        }
                      },
                    ),
                  )
                  .toList())
        ],
      ),
    );
  }
}
