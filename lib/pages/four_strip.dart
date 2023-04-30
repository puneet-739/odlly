import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Elements/oddly_app_bar.dart';

class FourStripNumbers extends StatelessWidget {
  const FourStripNumbers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Material(
            child: Scaffold(
              appBar: const PreferredSize(preferredSize: Size.fromHeight(60.0),
              child: AppBarOddly(title: 'oddly',)),
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // INPUT FIELD
                      Container(
                        constraints: const BoxConstraints(maxWidth: 300),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "enter n",
                            suffixIcon: IconButton(
                              onPressed: () {  },
                              icon: Icon(Icons.navigate_next),),
                            border: OutlineInputBorder()
                          ),
                        ),
                      )
                    ],
                  ),
                )
            )
        )
    ); 
  }
}
