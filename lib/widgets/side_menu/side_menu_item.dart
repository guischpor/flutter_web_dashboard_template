import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard_template/helpers/responsive_widget.dart';
import 'package:flutter_web_dashboard_template/widgets/side_menu/horizontal_menu_item.dart';
import 'package:flutter_web_dashboard_template/widgets/side_menu/vertical_menu_item.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final void Function() onTap;

  const SideMenuItem({
    Key? key,
    required this.itemName,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isCustomScreen(context)) {
      return VerticalMenuItem(itemName: itemName, onTap: onTap);
    }

    return HorizontalMenuItem(itemName: itemName, onTap: onTap);
  }
}
