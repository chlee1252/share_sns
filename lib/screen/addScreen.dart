import 'package:flutter/material.dart';
import 'package:sharesns/widget/cardButton.dart';
import 'package:sharesns/widget/customInput.dart';

//TODO: Add Screen design and implement
class AddScreen extends StatefulWidget {
  AddScreen({this.title});

  static final String id = "AddScreen";
  final String title;
  @override
  _AddScreenState createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                widget.title,
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
              hintText:
                  "Please type your ${widget.title} account",
              borderColor: Colors.black,
              onChanged: (value) {
                print(value);
              },
            ),
            CardButton(
                title: "Add",
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Colors.black),
            CardButton(
              title: "Cancel",
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
