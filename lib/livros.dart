class Livros {
  String title = '';
  String descricao = '';

  Livros(String title, String descricao) {
    this.title = title;
    this.descricao = descricao;
  }
  Livros.fromJson(Map livro)
      : title = livro['volumeInfo']["title"],
        descricao = livro['volumeInfo']["description"];
  Map toJson() {
    return {'title': title, 'descricao': descricao};
  }
}
