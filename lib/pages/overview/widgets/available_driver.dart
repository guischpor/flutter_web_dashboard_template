import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard_template/widgets/custom_text.dart';

import '../../../constants/web_colors.dart';

/// Example without a datasource
class AvailableDrivers extends StatelessWidget {
  const AvailableDrivers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
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
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              const SizedBox(width: 10),
              CustomText(
                text: 'Available Drivers',
                color: lightGrey,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
          DataTable2(
            columnSpacing: 12,
            horizontalMargin: 12,
            minWidth: 600,
            columns: const [
              DataColumn2(
                label: Text('Name'),
                size: ColumnSize.L,
              ),
              DataColumn(
                label: Text('Location'),
              ),
              DataColumn(
                label: Text('Rating'),
              ),
              DataColumn(
                label: Text('Action'),
              ),
            ],
            rows: List<DataRow>.generate(
              7,
              (index) => DataRow(
                cells: [
                  const DataCell(CustomText(text: 'Guilherme Scholz Portela')),
                  const DataCell(CustomText(text: 'Curitiba')),
                  DataCell(
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 18,
                        ),
                        const SizedBox(width: 5),
                        CustomText(text: "4.$index")
                      ],
                    ),
                  ),
                  DataCell(
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: active,
                          width: .5,
                        ),
                        color: light,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      child: CustomText(
                        text: 'Assign Delivery',
                        color: active.withOpacity(0.7),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
