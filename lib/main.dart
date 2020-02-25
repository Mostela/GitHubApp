import 'package:busca_github/screen/MainScreen.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([

    ]);
    return MaterialApp(
      title: 'Github Busca',
      theme: ThemeData(
        primarySwatch: Colors.green,
        secondaryHeaderColor: Colors.white,
        backgroundColor: Colors.black26
      ),
      home: MyHomePage()
    );
  }
}