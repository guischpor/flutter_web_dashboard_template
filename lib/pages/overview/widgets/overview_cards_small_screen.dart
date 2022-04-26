import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard_template/pages/overview/widgets/info_card_small.dart';

class OverviewCardSmallScreen extends StatelessWidget {
  const OverviewCardSmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _widht = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 400,
      child: Column(
        children: [
          InfoCardSmall(
            title: 'Rides in progress',
            value: '8',
            isActive: true,
            onTap: () {},
          ),
          SizedBox(height: _widht / 64),
          InfoCardSmall(
            title: 'Packages delivered',
            value: '16',
            onTap: () {},
          ),
          SizedBox(height: _widht / 64),
          InfoCardSmall(
            title: 'Cancelled delivery',
            value: '3',
            onTap: () {},
          ),
          SizedBox(height: _widht / 64),
          InfoCardSmall(
            title: 'Scheduled deliveries',
            value: '11',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
