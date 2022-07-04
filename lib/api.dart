import 'dart:async';
import 'package:http/http.dart' as http;

const baseUrl = "https://www.googleapis.com/books/v1/volumes?q=";

class API {
  static Future getLivros(pesquisa) async {
    var url = baseUrl + pesquisa;
    return await http.get(Uri.parse(url));
  }
}

class Livros {
  String title = '';
  String descricao = '';
  bool mostraImg = false;
  String imagem = '';
  String livro = '';
  String autor = '';

  Livros(String title, String autor, String descricao, String livro,
      bool mostraImg, String imagem) {
    this.title = title;
    this.autor = autor;
    this.descricao = descricao;
    this.livro = livro;
    this.mostraImg = mostraImg;
    this.imagem = imagem;
  }
  Livros.fromJson(Map json)
      : title = json['volumeInfo']['title'],
        //descricao = json['volumeInfo']['description'],
        autor = json['volumeInfo']['authors'][0],
        livro = json['accessInfo']['webReaderLink'];
  Map toJson() {
    return {
      'title': title,
      'autor': autor,
      'livro': livro,
      'descricao': descricao,
      'imagem': imagem
    };
  }
}
