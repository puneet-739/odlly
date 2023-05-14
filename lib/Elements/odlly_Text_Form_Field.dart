import 'package:flutter/material.dart';

class TextFormFieldOdlly extends StatefulWidget {
  final TextEditingController? fieldController;
  final FocusNode fieldFocusNode;
  final String text;
  final Color? labelColor;
  final bool? obscureText;
  const TextFormFieldOdlly({
    Key? key,
    required this.fieldFocusNode,
    required this.text,
    this.fieldController,
    this.labelColor,
    this.obscureText,
  }) : super(key: key);

  @override
  State<TextFormFieldOdlly> createState() => _TextFormFieldOdllyState();
}

class _TextFormFieldOdllyState extends State<TextFormFieldOdlly> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 300),
      child: TextFormField(
        obscureText: widget.obscureText ?? false,
        controller: widget.fieldController,
        focusNode: widget.fieldFocusNode,
        decoration: InputDecoration(
            labelStyle: TextStyle(color: widget.labelColor),
            labelText: widget.fieldFocusNode.hasFocus ? widget.text : null,
            hintText: !widget.fieldFocusNode.hasFocus ? widget.text : null,
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: widget.labelColor!))),
      ),
    );
  }
}
