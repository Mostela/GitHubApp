import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LabelText extends StatelessWidget {
  LabelText ({Key key, this.texto, this.estilo}) : super(key: key);
  String texto;
  TextStyle estilo;


  @override
  Widget build(BuildContext context) {
    return Text(
      this.texto,
      textAlign: TextAlign.center,
      style: this.estilo
    );
  }
}