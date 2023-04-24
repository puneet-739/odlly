import 'package:flutter/material.dart';

class Constants {
  static int a = 1;
  static List<MaterialColor> oddlyColorList = const [
    MaterialColor(0xFFF44336, {500: Color(0xFFF44336)}),
    MaterialColor(0xFFFF4081, {500: Color(0xFFFF4081)}),
    MaterialColor(0xFFFF9800, {500: Color(0xFFFF9800)}),
    MaterialColor(0xFF4CAF50, {500: Color(0xFF4CAF50)}),
    MaterialColor(0xFF69F0AE, {500: Color(0xFF69F0AE)}),
    MaterialColor(0xFF8BC34A, {500: Color(0xFF8BC34A)}),
    MaterialColor(0xFF2196F3, {500: Color(0xFF2196F3)}),
    MaterialColor(0xFF448AFF, {500: Color(0xFF448AFF)}),
    MaterialColor(0xFF03A9F4, {500: Color(0xFF03A9F4)}),
    // Color(0xFFF44336), Color(0xFFFF4081), Color(0xFFFF9800),  //Colors.red, Colors.pinkAccent, Colors.orange,
    // Color(0xFF4CAF50), Color(0xFF69F0AE), Color(0xFF8BC34A), //Colors.green, Colors.greenAccent, Colors.lightGreen,
    // Color(0xFF2196F3), Color(0xFF448AFF), Color(0xFF03A9F4) //Colors.blue, Colors.blueAccent, Colors.lightBlue
  ];
  List colorList = [
    0xFFF44336,
    0xFFFF4081,
    0xFFFF9800,
    0xFF4CAF50,
    0xFF69F0AE,
    0xFF8BC34A,
    0xFF2196F3,
    0xFF448AFF,
    0xFF03A9F4
  ];
  static List<MaterialColor> oddlyColors = [];
  // Constants() {
  //   oddlyColors = List.generate(9, (index) {
  //     var color = colorList[index];
  //     return const MaterialColor(0xFFF44336, {
  //       50: Color(0xFFF44336),
  //       100: Color(0xFFF44336),
  //       200: Color(0xFFF44336),
  //       300: Color(0xFFF44336),
  //       400: Color(0xFFF44336),
  //       500: Color(0xFFF44336),
  //       600: Color(0xFFF44336),
  //       700: Color(0xFFF44336),
  //       800: Color(0xFFF44336),
  //       900: Color(0xFFF44336)
  //     });
  //   });
  // }

}
