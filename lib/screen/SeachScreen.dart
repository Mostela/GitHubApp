import 'package:flutter/material.dart';

class SeachScreen extends StatefulWidget{
  SeachScreen({Key key}) : super(key: key);

  @override
  _SeachScreen createState() => _SeachScreen();
}

class _SeachScreen extends State<SeachScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Tela de busca"),
      ),
    );
  }
}