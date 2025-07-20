import 'package:flutter/material.dart';

class Variable {
  static bool isAndroid = false;
  static String sampleImage = '';

  static void initialize(BuildContext context) {
    isAndroid = MediaQuery.of(context).size.width < 600;
  }
}
