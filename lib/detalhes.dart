import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:propley_app/livros.dart';
import 'api.dart';

class BuildListView extends StatefulWidget {
  final String pesquisa;
  const BuildListView(this.pesquisa);

  @override
  _BuildListViewState createState() => _BuildListViewState(pesquisa);
}

class _BuildListViewState extends State<BuildListView> {
  List<Livros> livros = List<Livros>.empty();
  final String pesquisa;

  _BuildListViewState(this.pesquisa) {
    API.getLivros(pesquisa).then((response) {
      setState(() {
        Iterable lista = json.decode(response.body)['items'];
        livros = lista.map((model) => Livros.fromJson(model)).toList();
      });
    });
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Lista de Livros"),
      ),
      body: ListView.builder(
        itemCount: livros.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'http://imagenspng.com/wp-content/uploads/livro-azul-png-Imagem-sem-fundo.png'),
            ),
            title: Text(livros[index].title),
            subtitle: Text(livros[index].autor),
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => DetailPage(livros[index])));
            },
          );
        },
      ),
    );
  }
}
