import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard_template/constants/web_colors.dart';
import 'package:flutter_web_dashboard_template/routes/routes.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  MenuController instance = Get.find();

  var activeItem = overViewPageRoute.obs;
  var hoverItem = "".obs;

  changeActiveItem(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive(String itemName) => activeItem.value == itemName;

  isHovering(String itemName) => hoverItem.value == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case overViewPageRoute:
        return _customIcon(Icons.trending_up, itemName);
      case driversPageRoute:
        return _customIcon(Icons.drive_eta, itemName);
      case clientsPageRoute:
        return _customIcon(Icons.people_alt_outlined, itemName);
      case authenticationPageRoute:
        return _customIcon(Icons.exit_to_app, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) return Icon(icon, size: 22, color: dark);
    return Icon(icon, color: isHovering(itemName) ? dark : lightGrey);
  }
}
