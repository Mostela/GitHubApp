import 'dart:convert';

import 'package:busca_github/api/urls.dart';
import 'package:busca_github/component/Repositorio.dart';
import 'package:busca_github/component/TextFieldBusca.dart';
import 'package:busca_github/schema/RepositorioLista.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class SeachScreen extends StatefulWidget{
  SeachScreen({Key key}) : super(key: key);

  Future<List<RepositorioLista>> repositorios;

  @override
  _SeachScreen createState() => _SeachScreen();
}

class _SeachScreen extends State<SeachScreen>{

  final seachControl = TextEditingController();

  String _dataResponse = '<empty>';
  bool _pending = false;
  String _dataBusca = '<none>';

  Future<List<RepositorioLista>> fetchRepositorio(String valor_busca) async {
      String rota_api = BASE_URL + "users/"+ valor_busca +"/repos";
      debugPrint(rota_api);
      final response = await http.get(rota_api);
      Iterable<dynamic> jsonData = json.decode(response.body);
      List<RepositorioLista> reposi = [];
      for(var re in jsonData){
        reposi.add(new RepositorioLista(
            id: re["id"],
            usuario: re["owner"]["login"],
            titulo: re["name"],
            data: re["pushed_at"],
            technologia: re["language"],
            imagem: re["owner"]["avatar_url"]
        ));
      }
      return reposi;
  }

  Future<void> _busca(BuildContext context,String busca) async{
    this._dataResponse = (await fetchRepositorio(busca)) as String;
  }



  @override
  void initState(){
    super.initState();
    widget.repositorios = fetchRepositorio(seachControl.text);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new Row(
          children: <Widget>[
            new Flexible(child: new TextFieldBusca(myControler: seachControl,))
          ],
        ),
        ButtonBar(
          children: <Widget>[
            RaisedButton(
              child: Text("Buscar"),
              onPressed: () => this._busca(context, seachControl.text),
            )
          ],
        ),
        if (this._dataResponse.length > 0)
          Flexible(
            child: new Container(
              color: Colors.black12,
              child: ListView.builder(
                itemCount: this._dataResponse.length,
                itemBuilder: null,
              ),
            ),
          ),
      ],
    );
  }
}
