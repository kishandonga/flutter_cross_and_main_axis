import 'package:flutter/material.dart';
import 'package:flutter_cross_and_main_axis/controller/axis_controller.dart';
import 'package:get/get.dart';

class ColumnAxisPage extends StatefulWidget {
  @override
  State<ColumnAxisPage> createState() => _ColumnAxisPageState();
}

class _ColumnAxisPageState extends State<ColumnAxisPage> {
  final controller = Get.put(AxisController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Column Axis'),
        automaticallyImplyLeading: false,
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
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Vertical Axis',
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ],
                      ),
                      Obx(
                        () => DropdownButton<MainAxisAlignment>(
                          isExpanded: true,
                          focusColor: Colors.transparent,
                          items: controller.mainAxisAlignmentList
                              .map((MainAxisAlignment value) {
                            return DropdownMenuItem<MainAxisAlignment>(
                              value: value,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(value.toString()),
                              ),
                            );
                          }).toList(),
                          onChanged: (value) {
                            controller.mainAxis = value!;
                          },
                          value: controller.mainAxis,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Horizontal Axis',
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ],
                      ),
                      Obx(
                        () => DropdownButton<CrossAxisAlignment>(
                          isExpanded: true,
                          focusColor: Colors.transparent,
                          items: controller.crossAxisAlignmentList
                              .map((CrossAxisAlignment value) {
                            return DropdownMenuItem<CrossAxisAlignment>(
                              value: value,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(value.toString()),
                              ),
                            );
                          }).toList(),
                          onChanged: (value) {
                            controller.crossAxis = value!;
                          },
                          value: controller.crossAxis,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: Obx(
                  () => Column(
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: controller.mainAxis,
                    crossAxisAlignment: controller.crossAxis,
                    children: controller.colors
                        .map((e) => Container(
                              height: 100,
                              width: 100,
                              color: e,
                            ))
                        .toList(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    Get.delete<AxisController>();
    super.dispose();
  }
}
