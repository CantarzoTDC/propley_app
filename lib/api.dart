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

  Livros(String title, String descricao) {
    this.title = title;
    this.descricao = descricao;
  }
  Livros.fromJson(Map json)
      : title = json['volumeInfo']['title'],
        descricao = json['volumeInfo']['description'];
  Map toJson() {
    return {'title': title, 'descricao': descricao};
  }
}
