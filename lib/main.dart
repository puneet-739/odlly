import 'dart:math';

import 'package:flutter/material.dart';
import 'package:odlly/constants/constants.dart';
import 'package:odlly/pages/suffle_color_matrix.dart';
import 'package:odlly/pages/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    int ranNum = Random().nextInt(9);
    return MaterialApp(
      title: 'odLly',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        fontFamily: 'Laila'
        // primarySwatch: Constants.oddlyColorList[ranNum]

      ),
      home: const Scaffold(
        // appBar: AppBar(
        //   title: Text("odLly"),
        // ),
          body: WelcomeScreen()),
    );
  }
}


