import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard_template/constants/web_colors.dart';
import 'package:flutter_web_dashboard_template/widgets/custom_text.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(
        text: 'Overview Page',
        color: dark,
        fontSize: 30,
      ),
    );
  }
}
