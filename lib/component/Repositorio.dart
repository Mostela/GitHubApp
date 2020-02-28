import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Repositorio extends StatelessWidget{
  String imageLink;

  Repositorio({Key key, this.imageLink}) : super(key : key);
  
  @override
  Widget build(BuildContext context) {
    // TODO: Conjunto de elementos que formam o elemento repositorio
    return Row(
      children: <Widget>[
        Column(
          children: <Widget>[
            Card(
              child: Image.network(this.imageLink),
            )
          ],
        ),
        Column(
          children: <Widget>[
            Row(
              children: <Widget>[

              ],
            )
          ],
        )
      ],
    );
  }
}
