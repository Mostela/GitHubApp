FutureBuilder(
future: fetchRepositorio(seachControl.text.toString()),
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
),