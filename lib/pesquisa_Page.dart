import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:propley_app/livros.dart';
import 'api.dart';

class BuildListView extends StatefulWidget {
  @override
  createState() => _BuildListViewState();
}

class _BuildListViewState extends State {
  var livros = <Livros>[];
  _getLivros() {
    API.getLivros('a+cabana').then((response) {
      setState(() {
        var list = json.decode(response.body.items);
        livros = list.map((livro) => Livros.fromJson(livro)).toList();
      });
    });
  }

  initState() {
    super.initState();
    _getLivros();
  }

  dispose() {
    super.dispose();
  }

  @override
  build(context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Livros"),
        ),
        body: ListView.builder(
          itemCount: livros.length,
          itemBuilder: (context, index) {
            return ListTile(title: Text(livros[index].title));
          },
        ));
  }
}
