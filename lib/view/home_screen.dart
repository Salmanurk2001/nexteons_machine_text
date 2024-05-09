import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nexteons_machine_text/controller/controller_table.dart';

class Home_Screen extends StatelessWidget {
  final Controller_Table controller = Get.put(Controller_Table());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Material(
        child: Obx(
              () => DataTable2(
            columnSpacing: 12,
            horizontalMargin: 12,
            minWidth: 200,
            columns: const [
              DataColumn2(
                label: Text('Name',),
                size: ColumnSize.S,
              ),
              DataColumn2(
                size: ColumnSize.S,
                label: Text('UID'),
              ),
              DataColumn2(
                size: ColumnSize.S,
                label: Text('Doc type'),
              ),
              DataColumn2(
                size: ColumnSize.S,
                label: Text('Image'),
              ),
            ],
            rows: controller.tableRows.toList(),
          ),
        ),
      ),
    );
  }
}
