import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarTela extends StatelessWidget {
  AppBarTela({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.green,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.android),
          onPressed: (){
          },
        ),
        IconButton(
          icon: Icon(Icons.account_circle),
          onPressed: (){},
        )
      ],
    );
  }
}