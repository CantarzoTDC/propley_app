import 'package:flutter/material.dart';
import 'package:url_launcher/src/legacy_api.dart';
import 'package:url_launcher/url_launcher.dart';
import 'api.dart';

class DetailPage extends StatelessWidget {
  final Livros livros;

  DetailPage(this.livros);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(livros.title),
      ),
      body: Container(
        padding: new EdgeInsets.all(10.0),
        child: Column(
          children: [
            Center(
              child: Image(
                image: NetworkImage(
                  'https://st.depositphotos.com/1732591/1267/v/600/depositphotos_12679317-stock-illustration-open-book.jpg',
                ),
              ),
            ),
            Text(''),
            Text('Autor:'),
            Text(livros.autor),
            Text(''),
            Text("Link para leitura:"),
            IconButton(
                icon: Icon(Icons.book,),
                onPressed: () async {
                  await launch(livros.livro);
                }
            )
          ],
        ),
      ),
    );
  }
}