import 'package:flutter/material.dart';

class TextFieldBusca extends StatefulWidget{
  final TextEditingController myControler;

  const TextFieldBusca({Key key, this.myControler}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TextFieldBusca();
}

class _TextFieldBusca extends State<TextFieldBusca>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextField(
      controller: widget.myControler,
      obscureText: false,
      showCursor: true,
      textDirection: TextDirection.ltr,
      decoration: InputDecoration(
        labelText: "Buscar",
        icon: Icon(Icons.search),
        contentPadding: EdgeInsets.all(0),
      ),
      // TODO: Envio dos dados para busca no Github
      onSubmitted: (val) => widget.myControler.text = val.toString()
    );
  }
}