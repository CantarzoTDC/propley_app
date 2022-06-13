import 'package:flutter/material.dart';

class CadastroScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/logo.jpg'),
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomCenter),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Cadastro'.toUpperCase(),
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ]),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Icon(
                            Icons.alternate_email,

                          ),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(labelText: 'E-mail'),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Icon(
                          Icons.lock,

                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(labelText: 'Senha'),
                          obscureText: true,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(labelText: 'Confirmar Senha'),
                          obscureText: true,
                        ),
                      )],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}