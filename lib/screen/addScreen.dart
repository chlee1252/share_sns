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
  TextEditingController _controller = TextEditingController();
  String result;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              controller: _controller,
              hintText:
                  "Please type your ${widget.title} account",
              borderColor: Colors.black,
            ),
            CardButton(
                title: "Add",
                onPressed: () {
                  if (_controller.text.length != 0) {
                    Navigator.pop(context, _controller.text);
                  }
                },
                color: Colors.black),
            CardButton(
              title: "Cancel",
              onPressed: () {
                Navigator.pop(context, null);
              },
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
