import 'package:flutter/material.dart';

class Utils {

  static getImage(String imagePath) {
    return "lib/images/$imagePath";
  }

  static toPeso(double value) {
    return Row(
      children: [
        Text('₱ ',),
        Text(value.toString())
      ],
    );
  }
}