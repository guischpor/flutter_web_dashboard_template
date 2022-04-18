import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard_template/helpers/responsive_widget.dart';
import 'package:flutter_web_dashboard_template/widgets/large_screen.dart';
import 'package:flutter_web_dashboard_template/widgets/side_menu/side_menu.dart';
import 'package:flutter_web_dashboard_template/widgets/small_screen.dart';
import 'package:flutter_web_dashboard_template/widgets/top_navigation_bar.dart';

class SiteLayout extends StatelessWidget {
  SiteLayout({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: topNavigationBar(context, _scaffoldKey),
      drawer: const Drawer(child: SideMenu()),
      drawerEnableOpenDragGesture: true,
      body: const ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
