import 'package:flutter/material.dart';

class Utils {
  static double getHeight(BuildContext context) {
    return MediaQuery.of(context).size.height / 873;
  }

  static double getWidth(BuildContext context) {
    return MediaQuery.of(context).size.width / 393;
  }
}