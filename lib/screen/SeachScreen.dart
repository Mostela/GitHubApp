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

  static Future<List<RepositorioLista>> fetchRepositorio() async {
    final response = await http.get(URL_LISTA_REPOSITORIO);
      var jsonData = json.decode(response.body);
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



  @override
  void initState(){
    super.initState();
    widget.repositorios = fetchRepositorio();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new Row(
          children: <Widget>[
            new Flexible(child: new TextFieldBusca())
          ],
        ),
        new Flexible(
          child: new Container(
            color: Colors.black12,
              child: FutureBuilder(
                  future: fetchRepositorio(),
                  builder: (BuildContext context,AsyncSnapshot snapshot) {
                    if(snapshot.hasData){
                      return ListView.builder(
                          itemCount: snapshot.data.length,
                          itemBuilder: (context, index){
                            RepositorioLista repositorioLista = snapshot.data[index];
                            return Repositorio(
                              usuario: repositorioLista.usuario,
                              imageLink: repositorioLista.imagem,
                              linguagem: repositorioLista.technologia,
                              nome_repositorio: repositorioLista.titulo,
                              data_criacao: DateTime.parse(repositorioLista.data),
                            );
                          }
                      );
                    }else if(snapshot.hasError){
                      return Text("${snapshot.error}");
                    }
                    return LinearProgressIndicator();
                  }
              )
          ),
        )
      ],
    );
  }
}
