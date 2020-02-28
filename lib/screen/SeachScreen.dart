import 'package:busca_github/component/Repositorio.dart';
import 'package:flutter/material.dart';

class SeachScreen extends StatefulWidget{
  SeachScreen({Key key}) : super(key: key);

  @override
  _SeachScreen createState() => _SeachScreen();
}

class _SeachScreen extends State<SeachScreen>{
  static final repositorios = <Widget>[
    Repositorio(
      imageLink: "https://pbs.twimg.com/profile_images/916815581663207424/eUEYk1ni_400x400.jpg",
    )
  ];
  var elementos_tela = <Widget>[
    Row(
      children: <Widget>[
      ],
    ),
    Column(
      children: repositorios
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: repositorios,
      ),
    );
  }
}
