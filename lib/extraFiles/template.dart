import 'package:flutter/material.dart';


class ClassName extends StatefulWidget {
  const ClassName({Key? key}) : super(key: key);

  @override
  State<ClassName> createState() => _ClassNameState();
}

class _ClassNameState extends State<ClassName> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Material(
            child: Text(
                'This is a Home Page')
        )
    );
  }
}
