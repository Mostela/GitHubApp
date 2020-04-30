class RepositorioLista{
  int id;
  String titulo;
  String usuario;
  String data;
  String technologia;
  String imagem;

  RepositorioLista({this.id, this.titulo, this.usuario, this.data, this.technologia, this.imagem});


  RepositorioLista.fromJson(Map json) :
      id = json["id"],
      titulo = json["name"],
      usuario = json["owner"]["login"],
      data = DateTime.now().toString(),
      imagem = json["owner"]["avatar_url"];


}