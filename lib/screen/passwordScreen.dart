import 'package:flutter/material.dart';
import 'package:sharesns/screen/loginScreen.dart';
import 'package:sharesns/widget/cardButton.dart';
import 'package:sharesns/widget/customInput.dart';

class PasswordScreen extends StatefulWidget {
  static final String id = "PasswordScreen";
  @override
  _PasswordScreenState createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Find Password",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          CustomInput(
            hintText: "Enter your account",
            borderColor: Colors.black,
            onChanged: (value) {
              print(value);
            },
          ),
          CardButton(
            title: "Submit",
            color: Colors.black,
            onPressed: () {
              print("Submit");
            },
          ),
          CardButton(
            title: "Back",
            color: Colors.grey,
            onPressed: () {
              Navigator.pushReplacementNamed(context, LoginScreen.id);
            },
          ),
        ],
      ),
    );
  }
}
