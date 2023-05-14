import 'dart:math';

import 'package:flutter/material.dart';

import '../constants/constants.dart';

class MaterialButtonOdlly extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? color;
  const MaterialButtonOdlly({
    Key? key,
    required this.onPressed,
    this.color,
    this.text = '',
  }) : super(key: key);

  @override
  State<MaterialButtonOdlly> createState() => _MaterialButtonOdllyState();
}

class _MaterialButtonOdllyState extends State<MaterialButtonOdlly> {
  @override
  Widget build(BuildContext context) {
    int ranNum = Random().nextInt(9);
    return MaterialButton(
      onPressed: widget.onPressed,
      color: widget.color ?? Constants.odllyColorList[ranNum],
      textColor: Colors.white,
      elevation: 10,
      height: 50,
      minWidth: 200,
      child: Text(widget.text),
    );
  }
}
