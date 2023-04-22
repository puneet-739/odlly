import 'package:flutter/material.dart';
import 'package:odlly/pages/homeScreen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Container(
                 height: 100,
                 width: 100,
                 color: Colors.cyan,
                 child: const Text("  "),
               ),
               MaterialButton(onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
               },
                 color: Colors.blue,
                 textColor: Colors.white,
                 child: const Text('   '),
               )
             ],
            ),
          )),
    );
  }
}
