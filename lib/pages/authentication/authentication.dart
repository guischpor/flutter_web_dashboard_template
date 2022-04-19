import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  get dark => null;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(
        text: 'Authentication Page',
        color: dark,
        fontSize: 30,
      ),
    );
  }
}
