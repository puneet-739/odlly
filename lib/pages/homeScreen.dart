import 'dart:math';

import 'package:flutter/material.dart';
import 'package:odlly/Elements/oddly_app_bar.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List colorsList = [
    Colors.red, Colors.pinkAccent, Colors.orange,
    Colors.green, Colors.greenAccent, Colors.lightGreen,
    Colors.blue, Colors.blueAccent, Colors.lightBlue
  ];

  @override
  Widget build(BuildContext context) {
    colorsList.shuffle();
    var random = Random();
    List<String> numberList = <String>['1', '2', '3', '4', '5', '6', '7', '8', '9'];
    numberList[random.nextInt(9)] = '';
    numberList.shuffle();
    return SafeArea(
        child: Material(
            child: Scaffold(
              appBar: const PreferredSize(preferredSize: Size.fromHeight(60),
              child: AppBarOddly(title: 'oddly',)),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // COLOR BOX
                    Container(
                      height: 300,
                      width: 300,
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 5.0,
                          mainAxisSpacing: 5.0,
                        ),
                        itemCount: 9,
                        itemBuilder: (context, index) {
                          return Container(
                            color: colorsList[index],
                            child: Center(
                              child: Text(
                                  numberList[index],
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      ),
                    SizedBox(
                      height: 40,
                    ),
                    // REFRESH BUTTON
                    MaterialButton(onPressed: () {
                      setState(() {

                      });
                    },
                      color: colorsList[random.nextInt(9)],
                      textColor: Colors.white,
                      elevation: 10,
                      height: 50,
                      minWidth: 200,
                      child: const Text('Suffle'),
                    )
                  ],
                ),
              ),
              ),
            )
    );
  } 
}
