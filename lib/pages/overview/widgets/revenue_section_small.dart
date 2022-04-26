import 'package:flutter/material.dart';

import '../../../constants/web_colors.dart';
import '../../../widgets/custom_text.dart';
import 'bar_chart.dart';
import 'revenue_info.dart';

class RevenueSectionSmall extends StatelessWidget {
  const RevenueSectionSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 6),
            color: lightGrey.withOpacity(.1),
            blurRadius: 12,
          )
        ],
        border: Border.all(
          color: lightGrey,
          width: 2,
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 260,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomText(
                  text: 'Revenue Chart',
                  fontSize: 20,
                  color: lightGrey,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  width: 600,
                  height: 200,
                  child: SimpleBarChart.withSampleData(),
                )
              ],
            ),
          ),
          Container(
            width: 120,
            height: 1,
            color: lightGrey,
          ),
          SizedBox(
            height: 260,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: const [
                    RevenueInfo(
                      title: "Today's",
                      amount: "23",
                    ),
                    RevenueInfo(
                      title: "Last 7 days",
                      amount: "150",
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  children: const [
                    RevenueInfo(
                      title: "Last 30 days",
                      amount: "1,123",
                    ),
                    RevenueInfo(
                      title: "Last 12 months",
                      amount: "4,256",
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
