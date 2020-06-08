import 'package:busca_github/component/LabelText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Repositorio extends StatefulWidget {
  /// Metodos
  String imageLink;
  String linguagem;
  String nome_repositorio;
  DateTime data_criacao;
  String usuario;


  Repositorio(
      {Key key, this.imageLink, this.nome_repositorio, this.usuario, this.data_criacao, this.linguagem})
      : super(key: key);


  String quebraData(DateTime data){
    var dat = data.toString().split('-');
    return "${dat[2].split(" ")[0]}/${dat[1]}/${dat[0]}";
  }

  @override
  _Repositorio createState() => _Repositorio();
}

class _Repositorio extends State<Repositorio>{

  static final estilo_titulo = TextStyle(
      color: Color.fromRGBO(139, 0, 0, 1),
      fontSize: 18,
      fontWeight: FontWeight.bold
  );

  static final estilo_linguagem = TextStyle(
    fontStyle: FontStyle.italic,
    color: Colors.cyanAccent,
  );

  static final estilo_data = TextStyle(
      color: Colors.black,
      fontSize: 12
  );

  static final estilo_autor = TextStyle(
    color: Colors.lightBlue
  );

  static final margem_container = const EdgeInsets.only(left: 2.0, top: 4.0);

  @override
  Widget build(BuildContext context) {
    // TODO: Conjunto de elementos que formam o elemento repositorio
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            child: Card(
              /*child: Image.network(widget.imageLink, width: 90, scale: 1),
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(50)
              ),*/
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: margem_container,
                child: LabelText(texto: widget.nome_repositorio, estilo: estilo_titulo)
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    LabelText(texto: "Autor:", estilo: estilo_autor),
                    LabelText(texto: widget.usuario, estilo: estilo_autor)
                  ],
                ),
                margin: margem_container,
              ),
              Container(
                margin: margem_container,
                child: LabelText(texto: widget.linguagem != null ? widget.linguagem : "-----")
              ),
              Container(
                margin: margem_container,
                child: Row(
                  children: <Widget>[
                    LabelText(texto: "Criado em:", estilo: estilo_data,),
                    LabelText(texto: widget.quebraData(widget.data_criacao) != null ? widget.quebraData(widget.data_criacao): "---/---/---" , estilo: estilo_data,)
                  ],
                ),
              )
            ],
          )
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
      ),
      margin: const EdgeInsets.only(bottom: 5.0),
      decoration: BoxDecoration(
        color: Colors.white
      ),
    );
  }
}
