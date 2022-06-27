import 'package:flutter/material.dart';
import 'package:propley_app/Auth_service.dart';
import 'package:propley_app/pesquisa_Page.dart';
import 'package:provider/provider.dart';

class WelcomeScreenState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          AppBar(
            toolbarHeight: 100,
            backgroundColor: Colors.blue,
            title: Text('Apresentação'),
            centerTitle: true,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(15.0),
                margin: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(color: Colors.black.withOpacity(0.7)),
                child: const Text(
                  "O aplicativo Propley foi desenvolvido pelos alunos Daniel Branches, Thiago Emerick e Thiago Gava.\n\n"
                  "O objetivo do aplicativo é você poder ter um APP para ler Livros de fácil acesso e sem ADS.\n\n",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => BuildListView(),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          elevation: 6,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Icon(
                              Icons.login_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                            Text(
                              'Ir para Pesquisa',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () => context.read<AuthService>().logout(),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          elevation: 6,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Icon(
                              Icons.logout_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                            Text(
                              'Sair da conta',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
