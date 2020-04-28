import 'package:flutter/material.dart';
import 'package:sharesns/screen/mainScreen.dart';

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
      home: MainScreen(),
      initialRoute: MainScreen.id,
      routes: {
        MainScreen.id: (context) => MainScreen(),
      },
    );
  }
}
