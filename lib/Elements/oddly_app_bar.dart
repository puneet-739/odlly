import 'package:flutter/material.dart';


class AppBarOdlly extends StatefulWidget {
  final String title;
  const AppBarOdlly({Key? key, this.title = ''}) : super(key: key);

  @override
  State<AppBarOdlly> createState() => _AppBarOdllyState();
}

class _AppBarOdllyState extends State<AppBarOdlly> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(widget.title),
    );
  }
}
