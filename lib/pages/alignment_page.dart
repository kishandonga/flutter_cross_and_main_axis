import 'package:flutter/material.dart';
import 'package:flutter_cross_and_main_axis/controller/alignment_controller.dart';
import 'package:get/get.dart';

class AlignmentPage extends StatelessWidget {
  final controller = Get.put(AlignmentController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Alignment Widget'),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 3.0,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          PopupMenuButton<Alignment>(
                            icon: Icon(Icons.align_horizontal_center),
                            itemBuilder: (context) => [
                              ...controller
                                  .getAlignments()
                                  .map((Alignment value) {
                                return PopupMenuItem<Alignment>(
                                  value: value,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(value.toString()),
                                  ),
                                );
                              }).toList(),
                            ],
                            onSelected: (value) {
                              controller.setSelectedAlignment(value);
                            },
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Obx(
                            () => Text(
                              'Selected: ${controller.selectedAlignment.toString()}',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 4,
                          ),
                          Obx(
                            () => Checkbox(
                                value: controller.fixContainer.value,
                                onChanged: (newVal) => controller
                                    .fixContainer.value = newVal ?? false),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text('To fix the container height and width'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Center(
              child: Obx(
                () => SizedBox(
                  height: controller.fixContainer.value ? 300 : double.infinity,
                  width: controller.fixContainer.value ? 300 : double.infinity,
                  child: Stack(
                    children: [
                      AnimatedAlign(
                        alignment: controller.selectedAlignment.value,
                        duration: Duration(
                            seconds: controller.fixContainer.value ? 2 : 3),
                        child: Container(
                          width: 300,
                          height: 300,
                          color: Colors.redAccent,
                        ),
                      ),
                      AnimatedAlign(
                        alignment: controller.selectedAlignment.value,
                        duration: Duration(
                            seconds: controller.fixContainer.value ? 2 : 3),
                        child: Container(
                          width: 200,
                          height: 200,
                          color: Colors.greenAccent,
                        ),
                      ),
                      AnimatedAlign(
                        alignment: controller.selectedAlignment.value,
                        duration: Duration(
                            seconds: controller.fixContainer.value ? 2 : 3),
                        child: Container(
                          width: 100,
                          height: 100,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
