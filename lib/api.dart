import 'dart:async';
import 'package:http/http.dart' as http;

const baseUrl = "https://www.googleapis.com/books/v1/volumes?q=";

class API {
  static Future getLivros(pesquisa) {
    var url = Uri.parse(baseUrl + pesquisa);
    var resultado = http.get(url);
    print(resultado);
    return http.get(url);
  }
}
