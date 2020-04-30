import 'package:flutter/material.dart';
import 'package:sharesns/screen/loginScreen.dart';
import 'package:sharesns/screen/registerScreen.dart';
import 'package:sharesns/widget/cardButton.dart';

class FirstScreen extends StatefulWidget {
  static final String id = "FirstScreen";
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                "InstaShare",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            CardButton(
              title: "Login",
              color: Colors.black,
              onPressed: () {
                Navigator.pushReplacementNamed(context, LoginScreen.id);
              },
            ),
            CardButton(
              title: "Register",
              color: Colors.grey,
              onPressed: () {
                Navigator.pushReplacementNamed(context, RegisterScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
