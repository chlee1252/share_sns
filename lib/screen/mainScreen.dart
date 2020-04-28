import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  static String id = "MainScreen";
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("Share your SNS account to your friend Instantly :)"),
        ),
      ),
    );
  }
}
