import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:odlly/Elements/oddly_app_bar.dart';
import 'package:collection/collection.dart';

// extension SwappableList<E> on List<E> {
//   void swapList(int first, int second) {
//     final temp = this[first];
//     this[first] = this[second];
//     this[second] = temp;
//   }
// }

class SuffleColorMatrix extends StatefulWidget {
  const SuffleColorMatrix({Key? key}) : super(key: key);

  @override
  State<SuffleColorMatrix> createState() => _SuffleColorMatrixState();
}

class _SuffleColorMatrixState extends State<SuffleColorMatrix> {
  List colorsList = [
    Colors.red,
    Colors.pinkAccent,
    Colors.orange,
    Colors.green,
    Colors.greenAccent,
    Colors.lightGreen,
    Colors.blue,
    Colors.blueAccent,
    Colors.lightBlue
  ];
  bool isShuffle = true;
  bool playerWins = false;
  List<String> numberList = [];
  List<String> baseNumberList = [];

  // TO CHANGE ORDER
  changeOrder(int index) {
    switch (index) {
      case 0:
        if (numberList[1] == '') {
          numberList.swap(0, 1);
          colorsList.swap(0, 1);
          setState(() {});
        } else if (numberList[3] == '') {
          numberList.swap(0, 3);
          colorsList.swap(0, 3);
          setState(() {});
        }
        break;
      case 1:
        if (numberList[0] == '') {
          numberList.swap(0, 1);
          colorsList.swap(0, 1);
          setState(() {});
        } else if (numberList[2] == '') {
          numberList.swap(2, 1);
          colorsList.swap(2, 1);
          setState(() {});
        } else if (numberList[4] == '') {
          numberList.swap(4, 1);
          colorsList.swap(4, 1);
          setState(() {});
        }
        break;
      case 2:
        if (numberList[1] == '') {
          numberList.swap(2, 1);
          colorsList.swap(2, 1);
          setState(() {});
        } else if (numberList[5] == '') {
          numberList.swap(2, 5);
          colorsList.swap(2, 5);
          setState(() {});
        }
        break;
      case 3:
        if (numberList[0] == '') {
          numberList.swap(0, 3);
          colorsList.swap(0, 3);
          setState(() {});
        } else if (numberList[4] == '') {
          numberList.swap(3, 4);
          colorsList.swap(3, 4);
          setState(() {});
        } else if (numberList[6] == '') {
          numberList.swap(6, 3);
          colorsList.swap(6, 3);
          setState(() {});
        }
        break;
      case 4:
        if (numberList[1] == '') {
          numberList.swap(1, 4);
          colorsList.swap(1, 4);
          setState(() {});
        } else if (numberList[3] == '') {
          numberList.swap(3, 4);
          colorsList.swap(3, 4);
          setState(() {});
        } else if (numberList[5] == '') {
          numberList.swap(5, 4);
          colorsList.swap(5, 4);
          setState(() {});
        } else if (numberList[7] == '') {
          numberList.swap(7, 4);
          colorsList.swap(7, 4);
          setState(() {});
        }
        break;
      case 5:
        if (numberList[2] == '') {
          numberList.swap(2, 5);
          colorsList.swap(2, 5);
          setState(() {});
        } else if (numberList[4] == '') {
          numberList.swap(5, 4);
          colorsList.swap(5, 4);
          setState(() {});
        } else if (numberList[8] == '') {
          numberList.swap(5, 8);
          colorsList.swap(5, 8);
          setState(() {});
        }
        break;
      case 6:
        if (numberList[3] == '') {
          numberList.swap(3, 6);
          colorsList.swap(3, 6);
          setState(() {});
        } else if (numberList[7] == '') {
          numberList.swap(7, 6);
          colorsList.swap(7, 6);
          setState(() {});
        }
        break;
      case 7:
        if (numberList[4] == '') {
          numberList.swap(4, 7);
          colorsList.swap(4, 7);
          setState(() {});
        } else if (numberList[6] == '') {
          numberList.swap(7, 6);
          colorsList.swap(7, 6);
          setState(() {});
        } else if (numberList[8] == '') {
          numberList.swap(7, 8);
          colorsList.swap(7, 8);
          setState(() {});
        }
        break;
      case 8:
        if (numberList[5] == '') {
          numberList.swap(5, 8);
          colorsList.swap(5, 8);
          setState(() {});
        } else if (numberList[7] == '') {
          numberList.swap(8, 7);
          colorsList.swap(8, 7);
          setState(() {});
        }
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    var random = Random();
    if (isShuffle) {
      colorsList.shuffle();
      numberList = <String>['1', '2', '3', '4', '5', '6', '7', '8', '9'];
      numberList[random.nextInt(9)] = '';
      baseNumberList = List.from(numberList);
      numberList.shuffle();
      isShuffle = false;
    }
    if (listEquals(baseNumberList, numberList)) {
        playerWins = true;
    }

    return SafeArea(
        child: Material(
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: AppBarOdlly(
              title: 'odlly',
            )),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (playerWins) ...[
                const Text(
                  "YOU WON!!!",
                  style: TextStyle(fontSize: 40),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],

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
                    return InkWell(
                      onTap: () {
                        if (!playerWins) {
                          changeOrder(index);
                        }
                      },
                      child: Container(
                        color: colorsList[index],
                        child: Center(
                          child: Text(
                            numberList[index],
                            style: const TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              // REFRESH BUTTON
              MaterialButton(
                onPressed: () {
                  setState(() {
                    isShuffle = true;
                    playerWins = false;
                  });
                },
                color: colorsList[random.nextInt(9)],
                textColor: Colors.white,
                elevation: 10,
                height: 50,
                minWidth: 200,
                child: Text(playerWins ? 'Play Again' : 'Shuffle'),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
