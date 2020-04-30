import 'package:flutter/material.dart';


//TODO: Add Screen design and implement
class AddScreen extends StatefulWidget {

  static final String id = "AddScreen";
  @override
  _AddScreenState createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Add Account Screen",
        ),
      ),
    );
  }
}
