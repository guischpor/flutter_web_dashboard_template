import 'package:flutter/material.dart';

import '../../constants/web_colors.dart';
import '../../widgets/custom_text.dart';

class ClientsPage extends StatelessWidget {
  const ClientsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(
        text: 'Clients Page',
        color: dark,
        fontSize: 30,
      ),
    );
  }
}
