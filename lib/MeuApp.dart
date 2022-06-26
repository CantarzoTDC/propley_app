import 'package:flutter/material.dart';
import 'AuthCheck.dart';

class MeuAplicativo extends StatelessWidget{
  const MeuAplicativo({Key? key}) : super(key: key);

  @override
  Widget build (BuildContext context){
    return MaterialApp(
      title: 'test',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: AuthCheck(),
    );
  }
}