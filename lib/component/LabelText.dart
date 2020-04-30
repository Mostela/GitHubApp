import 'package:flutter/material.dart';

class LabelText extends StatefulWidget{
  final String texto;
  final TextStyle estilo;

  LabelText ({Key key, this.texto, this.estilo}) : super(key: key);

  @override
  _LabelText createState() => _LabelText();
}

class _LabelText extends State<LabelText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.texto,
      textAlign: TextAlign.center,
      style: widget.estilo
    );
  }
}