import 'package:flutter/material.dart';
import 'package:sharesns/screen/firstScreen.dart';
import 'package:sharesns/screen/loginScreen.dart';
import 'package:sharesns/widget/customInput.dart';
import 'package:sharesns/widget/cardButton.dart';

class RegisterScreen extends StatefulWidget {
  static final String id = "RegisterScreen";
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Registeration",
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
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
          CustomInput(
            hintText: "Confirm your password",
            borderColor: Colors.black,
            obscureText: true,
            onChanged: (value) {
              print(value);
            },
          ),
          CardButton(
            title: "Register",
            color: Colors.black,
            onPressed: () {
              Navigator.pushReplacementNamed(context, LoginScreen.id);
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
    );
  }
}
