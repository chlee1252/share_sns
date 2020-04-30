import 'package:flutter/material.dart';
import 'package:sharesns/screen/firstScreen.dart';
import 'package:sharesns/screen/loginScreen.dart';
import 'package:sharesns/screen/mainScreen.dart';
import 'package:sharesns/screen/registerScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Instant Share",
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: FirstScreen(),
      initialRoute: FirstScreen.id,
      routes: {
        MainScreen.id: (context) => MainScreen(),
        FirstScreen.id: (context) => FirstScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegisterScreen.id: (context) => RegisterScreen(),
      },
    );
  }
}
