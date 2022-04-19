import 'package:flutter/material.dart';

import '../../constants/web_colors.dart';
import '../../widgets/custom_text.dart';

class DriversPage extends StatelessWidget {
  const DriversPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(
        text: 'Drivers Page',
        color: dark,
        fontSize: 30,
      ),
    );
  }
}