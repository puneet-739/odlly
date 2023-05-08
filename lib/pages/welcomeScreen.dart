import 'dart:math';

import 'package:flutter/material.dart';
import 'package:odlly/constants/constants.dart';
import 'package:odlly/pages/four_strip.dart';
import 'package:odlly/pages/suffle_color_matrix.dart';
import 'package:odlly/pages/ramanujan_magic_square.dart';

import 'home_body.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  late int ranNum;
  @override
  void initState() {
    ranNum = Random().nextInt(9);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Material(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               const Text(
                   "Odlly",
                 style: TextStyle(
                   fontSize: 80
                 ),
               ),
               MaterialButton(onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => SuffleColorMatrix()));
                 // Navigator.push(context, MaterialPageRoute(builder: (context) => HomeBase()));
                 // Navigator.push(context, MaterialPageRoute(builder: (context) => FourStripNumbers()));
                 // Navigator.push(context, MaterialPageRoute(builder: (context) => MagicSquare()));
               },
                 color: Constants.odllyColorList[ranNum],
                 textColor: Colors.white,
                 elevation: 10,
                 height: 50,
                 minWidth: 200,
                 child: const Text('Enter'),
               )
             ],
            ),
          )),
    );
  }
}
