import 'package:flutter/material.dart';


class UserScreen extends StatefulWidget {
  UserScreen({Key key}) : super(key: key);

  @override
  _UserScreen createState() => _UserScreen();
}

class _UserScreen extends State<UserScreen>{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina 2"),
      ),
      body: Center(
          child: Text("Ola meu Flutter")
      ),
    );
  }
}