import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AlignmentController extends GetxController {
  final selectedAlignment = Alignment.center.obs;
  final fixContainer = false.obs;

  final alignmentList = [
    Alignment.topLeft,
    Alignment.topCenter,
    Alignment.topRight,
    Alignment.centerLeft,
    Alignment.center,
    Alignment.centerRight,
    Alignment.bottomLeft,
    Alignment.bottomCenter,
    Alignment.bottomRight,
  ];

  List<Alignment> getAlignments() {
    return alignmentList;
  }

  void setSelectedAlignment(Alignment value) {
    selectedAlignment.value = value;
  }
}
