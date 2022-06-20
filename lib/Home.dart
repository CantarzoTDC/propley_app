import 'package:flutter/material.dart';
import 'AuthCheck.dart';
import 'main.dart';

class MeuAplicativo extends StatelessWidget{
  const MeuAplicativo({Key? key}) : super(key: key);

  @override
  Widget build (BuildContext context){
    return MaterialApp(
      title: 'teste',
      debugShowCheckedModeBanner: false,

    home: MyApp(),
    );
  }
}