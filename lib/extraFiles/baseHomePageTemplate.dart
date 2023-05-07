import 'package:flutter/material.dart';
import 'package:odlly/Elements/oddly_app_bar.dart';

// THIS IS A BASIC HOME PAGE TEMPLATE
class HomeScreenTemplate extends StatefulWidget {
  const HomeScreenTemplate({Key? key}) : super(key: key);

  @override
  State<HomeScreenTemplate> createState() => _HomeScreenTemplateState();
}

class _HomeScreenTemplateState extends State<HomeScreenTemplate> {
  List colorsList = [
    Colors.red, Colors.pinkAccent, Colors.orange,
    Colors.green, Colors.greenAccent, Colors.lightGreen,
    Colors.blue, Colors.blueAccent, Colors.lightBlue
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Material(
          child: Scaffold(
            appBar: const PreferredSize(preferredSize: Size.fromHeight(60),
                child: AppBarOdlly(title: 'oddly',)),
            body: Center(
              child: Container(
                height: 300,
                width: 300,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
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
                          (index+1).toString(),
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
            ),
          ),
        )
    );
  }
}
