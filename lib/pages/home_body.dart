import 'package:flutter/material.dart';
import 'package:odlly/pages/suffle_color_matrix.dart';

import '../Elements/oddly_app_bar.dart';

class HomeBase extends StatefulWidget {
  const HomeBase({Key? key}) : super(key: key);

  @override
  State<HomeBase> createState() => _HomeBaseState();
}

class _HomeBaseState extends State<HomeBase> {
  @override
  Widget build(BuildContext context) {
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SuffleColorMatrix()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  height: 70,
                  width: 70,

                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
