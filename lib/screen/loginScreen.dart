import 'package:flutter/material.dart';
import 'package:sharesns/screen/firstScreen.dart';
import 'package:sharesns/screen/mainScreen.dart';
import 'package:sharesns/widget/customInput.dart';
import 'package:sharesns/widget/cardButton.dart';

class LoginScreen extends StatefulWidget {
  static final String id = "LoginScreen";
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "IntaShare",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            CustomInput(
              hintText: "Enter your email",
              borderColor: Colors.black,
              onChanged: (value) {
                print(value);
              },
            ),
            CustomInput(
              hintText: "Enter your password",
              borderColor: Colors.black,
              obscureText: true,
              onChanged: (value) {
                print(value);
              },
            ),
            CardButton(
              title: "Login",
              color: Colors.black,
              onPressed: () {
                Navigator.pushReplacementNamed(context, MainScreen.id);
              },
            ),
            CardButton(
              title: "Back",
              color: Colors.grey,
              onPressed: () {
                Navigator.pushReplacementNamed(context, FirstScreen.id);
              },
            )
          ],
        ),
      ),
    );
  }
}
