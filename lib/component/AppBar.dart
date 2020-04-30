import 'package:busca_github/component/LabelText.dart';
import 'package:busca_github/screen/ConfigScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarTela extends StatelessWidget {
  AppBarTela({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.green,
      leading: Icon(Icons.android),
      title: Text("Busca Github", style: TextStyle(
          backgroundColor: Colors.transparent,
          fontSize: 16
      ),),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.account_circle),
          onPressed: (){
            Navigator.push(context,ConfigScreen());
          },
        )
      ],
    );
  }
}