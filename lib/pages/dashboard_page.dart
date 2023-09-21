import 'package:flutter/material.dart';
import 'package:flutter_cross_and_main_axis/controller/dashboard_controller.dart';
import 'package:flutter_cross_and_main_axis/routes.dart';
import 'package:get/get.dart';

class DashboardPage extends StatelessWidget {
  final controller = Get.find<DashboardController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flutter Axis And Alignments'),
        actions: [
          InkWell(
            onTap: () async {
              await controller.changeTheme();
            },
            child: Obx(
              () => Padding(
                padding: const EdgeInsets.all(16.0),
                child: Icon(
                  controller.themeType == 'Light'
                      ? Icons.brightness_4
                      : Icons.brightness_2,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 16,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.columnAxisPage);
                },
                child: Text('Column Axis'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.rowAxisPage);
                },
                child: Text('Row Axis'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.alignmentPage);
                },
                child: Text('Alignments'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
