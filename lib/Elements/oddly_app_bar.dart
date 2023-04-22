import 'package:flutter/material.dart';


class AppBarOddly extends StatefulWidget {
  final String title;
  const AppBarOddly({Key? key, this.title = ''}) : super(key: key);

  @override
  State<AppBarOddly> createState() => _AppBarOddlyState();
}

class _AppBarOddlyState extends State<AppBarOddly> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(widget.title),
    );
  }
}
