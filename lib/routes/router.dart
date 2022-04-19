import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard_template/pages/clients/clients_page.dart';
import 'package:flutter_web_dashboard_template/pages/drivers/drivers_page.dart';
import 'package:flutter_web_dashboard_template/pages/overview/overview_page.dart';

import 'routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case overViewPageRoute:
      return _getPageRoute(const OverViewPage());
    case driversPageRoute:
      return _getPageRoute(const DriversPage());
    case clientsPageRoute:
      return _getPageRoute(const ClientsPage());
    default:
      return _getPageRoute(const OverViewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
