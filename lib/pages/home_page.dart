import 'package:flutter/material.dart';
import 'package:flutter_cross_and_main_axis/routes.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Axis And Alignments'),
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
                  Get.toNamed(Routes.columnAxisPage);
                },
                child: Text('Column Axis'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.rowAxisPage);
                },
                child: Text('Row Axis'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.alignmentPage);
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
