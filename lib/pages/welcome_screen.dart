import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:odlly/pages/Login/Sign_up_Log_In.dart';
import 'package:odlly/pages/suffle_color_matrix.dart';

import '../Elements/odlly_Material_buttons.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  late int ranNum;
  late final subscription;
  double pos = 0.0;
  @override
  void initState() {
    // blockStreamer();
    ranNum = Random().nextInt(9);
    super.initState();
  }

  blockStreamer() {
    subscription = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if(pos <= 200) {
          pos += 10.0;
        } else if(pos > 200) {
          pos -= 10.0;
        }
        print("pos : $pos");
      });
    });
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
          child: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Odlly",
                  style: TextStyle(fontSize: 80),
                ),
                Column(
                  children: [
                    // ENTER INTO THE APP
                    MaterialButtonOdlly(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const SuffleColorMatrix()));
                      },
                      text: 'Enter',
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    // LOG IN
                    MaterialButtonOdlly(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpLogInUser(
                                      logIn: true,
                                    )));
                      },
                      text: 'Log In',
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    // SIGN UP
                    MaterialButtonOdlly(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpLogInUser()));
                      },
                      text: 'Sign Up',
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Positioned(
          //   top: pos,
          //   left: pos,
          //   child: Container(
          //     color: Colors.red,
          //     height: 30,
          //     width: 30,
          //   ),
          // )
        ],
      )),
    );
  }
}
