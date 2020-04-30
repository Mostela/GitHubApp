import 'package:flutter/material.dart';

class TextFieldBusca extends StatefulWidget{
  const TextFieldBusca({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TextFieldBusca();
}

class _TextFieldBusca extends State<TextFieldBusca>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextField(
      obscureText: false,
      showCursor: true,
      decoration: InputDecoration(
        labelText: "Buscar",
        icon: Icon(Icons.search),
        contentPadding: EdgeInsets.all(0),
      ),
      // TODO: Envio dos dados para busca no Github
      onSubmitted: (val) => debugPrint(val.toString())
    );
  }
}