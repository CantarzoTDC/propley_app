import 'package:flutter/material.dart';
import 'package:propley_app/detalhes.dart';


class Pesquisa_Page extends StatefulWidget {
  @override
  _Pesquisa_PageState createState() => _Pesquisa_PageState();
}

class _Pesquisa_PageState extends State<Pesquisa_Page> {
  final pesquisaController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(context) {
    return Scaffold(
      body: Column(
        children: [
          AppBar(
            backgroundColor: Colors.blue,
            title: Text("Busca de Livros"),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
            child: Form(
              key: formKey,
              child: TextFormField(
                controller: pesquisaController,
                decoration: const InputDecoration(
                  fillColor: Colors.blue,
                  hintText: "Pesquise seu livro",
                  //border: OutlineInputBorder(),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.blue,
                  ),
                  labelText: 'Pesquise seu livro',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Digite alguma coisa Thiago!';
                  }
                  return null;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => BuildListView(pesquisaController.text),
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                elevation: 6,
              ),
              child: Row(
                children: [
                  const Icon(Icons.check),
                  Text(
                    'Pesquisar',
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
