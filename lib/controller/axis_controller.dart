import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AxisController extends GetxController {
  final _mainAxis = MainAxisAlignment.center.obs;
  MainAxisAlignment get mainAxis => _mainAxis.value;
  set mainAxis(MainAxisAlignment value) => _mainAxis.value = value;

  final _crossAxis = CrossAxisAlignment.center.obs;
  CrossAxisAlignment get crossAxis => _crossAxis.value;
  set crossAxis(CrossAxisAlignment value) => _crossAxis.value = value;

  final colors = <Color>[
    Colors.purple,
    Colors.yellow,
    Colors.pink,
    Colors.green,
    Colors.blue,
  ];

  var mainAxisAlignmentList = [
    MainAxisAlignment.start,
    MainAxisAlignment.end,
    MainAxisAlignment.center,
    MainAxisAlignment.spaceAround,
    MainAxisAlignment.spaceBetween,
    MainAxisAlignment.spaceEvenly,
  ];

  var crossAxisAlignmentList = [
    CrossAxisAlignment.start,
    CrossAxisAlignment.end,
    CrossAxisAlignment.center,
    CrossAxisAlignment.stretch,
    CrossAxisAlignment.baseline,
  ];
}
