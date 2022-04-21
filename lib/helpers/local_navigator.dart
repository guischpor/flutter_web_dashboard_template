import 'package:flutter/cupertino.dart';
import 'package:flutter_web_dashboard_template/constants/controllers.dart';
import 'package:flutter_web_dashboard_template/routes/router.dart';
import 'package:flutter_web_dashboard_template/routes/routes.dart';

Navigator localNavigator() {
  return Navigator(
    key: navigationController.navigationKey,
    onGenerateRoute: generateRoute,
    initialRoute: overViewPageRoute,
  );
}
