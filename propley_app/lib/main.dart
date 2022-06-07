import 'package:flutter/material.dart';
import 'package:propley_app/constants.dart';
import 'package:propley_app/signin.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Tela de Login',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: TextTheme(
          headline4: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          headline5: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
          button: TextStyle(color: kPrimaryColor),
        ),
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(
            color: Colors.white,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kPrimaryColor.withOpacity(.5),
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(width: 450,height: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/logo.jpg'),
                  fit: BoxFit.cover,
                )
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: 'Trabalho de Mobile\n'.toUpperCase(),
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    TextSpan(
                      text: 'Integrantes:\n Daniel Branches\n Thiago Gava\n Thiago Emerick'.toUpperCase(),
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ]),
                ),
                FittedBox(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SignInScreen();
                          },
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 25),
                      padding:
                      EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kPrimaryColor,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Comece Agora'.toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .button
                                ?.copyWith(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}