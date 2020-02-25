import 'package:flutter/material.dart';

class ConfigScreen extends MaterialPageRoute<Null>{
  ConfigScreen() : super(builder: (BuildContext context){
      return Scaffold(
        body: Text("Tela configuração")
      );
  });
}