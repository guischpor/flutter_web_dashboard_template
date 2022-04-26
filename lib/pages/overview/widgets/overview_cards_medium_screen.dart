import 'package:flutter/material.dart';

import 'info_card.dart';

class OverViewCardMediumScreen extends StatelessWidget {
  const OverViewCardMediumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _widht = MediaQuery.of(context).size.width;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            InfoCard(
              title: 'Rides in progress',
              value: '8',
              topColor: Colors.orange,
              onTap: () {},
            ),
            SizedBox(width: _widht / 64),
            InfoCard(
              title: 'Packages delivered',
              value: '16',
              topColor: Colors.lightGreen,
              onTap: () {},
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            InfoCard(
              title: 'Cancelled delivery',
              value: '3',
              topColor: Colors.redAccent,
              onTap: () {},
            ),
            SizedBox(width: _widht / 64),
            InfoCard(
              title: 'Scheduled deliveries',
              value: '11',
              topColor: Colors.orange,
              onTap: () {},
            ),
          ],
        )
      ],
    );
  }
}
