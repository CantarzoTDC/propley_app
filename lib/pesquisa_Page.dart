import 'dart:convert';
import 'package:flutter/material.dart';
import 'api.dart';

class BuildListView extends StatefulWidget {
  @override
  _BuildListViewState createState() => _BuildListViewState();
}

class _BuildListViewState extends State<BuildListView> {
  List<Livros> livros = List<Livros>.empty();
  String pesquisa = "diario+de+um+banana";

  _BuildListViewState() {
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
          title: Text("Lista de Livros"),
        ),
        body: ListView.builder(
          itemCount: livros.length,
          itemBuilder: (context, index) {
            return ListTile(title: Text(livros[index].title));
          },
        ));
  }
}
