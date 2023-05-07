import 'package:flutter/material.dart';
import 'package:odlly/Elements/oddly_app_bar.dart';

class MagicSquare extends StatefulWidget {
  MagicSquare({Key? key}) : super(key: key);

  @override
  State<MagicSquare> createState() => _MagicSquareState();
}

class _MagicSquareState extends State<MagicSquare> {
  String birthDate = '';
  List<int> magicSquareList = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: AppBarOdlly(
              title: "Magic Square",
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // BIRTH DATE PICKER
                MaterialButton(
                  child: const Text("Select Date"),
                    onPressed: () async {
                    DateTime? bDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime(2023),
                      firstDate: DateTime(1970),
                      lastDate: DateTime(2100));
                    if(bDate != null) {
                      List bDateList = bDate.toString().split(' ');
                      setState(() {
                        birthDate = bDateList[0];
                      });
                      magicSquareList.clear();
                      var dateMonthList = bDateList[0].split("-");
                      int dd = int.parse(dateMonthList[2]);
                      magicSquareList.add(dd);
                      int mm = int.parse(dateMonthList[1]);
                      magicSquareList.add(mm);
                      int y1 = int.parse(dateMonthList[0].substring(0, 2));
                      magicSquareList.add(y1);
                      int y2 = int.parse(dateMonthList[0].substring(2));
                      magicSquareList.add(y2);
                      magicSquareList.add(y2+1);
                      magicSquareList.add(y1-1);
                      magicSquareList.add(mm-3);
                      magicSquareList.add(dd+3);
                      magicSquareList.add(mm-2);
                      magicSquareList.add(dd+2);
                      magicSquareList.add(y2+2);
                      magicSquareList.add(y1-2);
                      magicSquareList.add(y1+1);
                      magicSquareList.add(y2-1);
                      magicSquareList.add(dd+1);
                      magicSquareList.add(mm-1);
                    }
                }),
                Container(
                  child: Text(birthDate),
                ),
                // RAMANUJAN MAGIC SQUARE
                if(birthDate != '')
                  Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 5.0,
                    ),
                    itemCount: 16,
                    itemBuilder: (context, index) {
                      return Container(
                        color: Colors.cyan,
                        child: Center(
                          child: Text(
                             magicSquareList[index].toString(),
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
