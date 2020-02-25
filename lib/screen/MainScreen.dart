import 'package:busca_github/component/TabsBar.dart';
import 'package:flutter/material.dart';
import 'package:busca_github/component/AppBar.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  dynamic txEstilo = TextStyle(
      color: Colors.green,
      fontSize: 32,
      fontStyle: FontStyle.normal
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45.0),
        child: AppBarTela()
      ),
      body: Center(
        child: TabsBar(),
      )
    );
  }
}