import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:sharesns/module/userData.dart';
import 'package:sharesns/sns/snsData.dart';
import 'package:sharesns/widget/addScreenWidget.dart';

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
  bool isError = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
            hintText: "Please type your ${widget.title} account",
            borderColor: Colors.black,
            isError: this.isError,
          ),
          CardButton(
              title: "Add",
              onPressed: () {
                if (widget.title == "Email" && !EmailValidator.validate(_controller.text)) {
                    setState(() {
                      this.isError = true;
                    });
                } else {
                  if (_controller.text.length != 0) {
                    var sns = Data.SNSData[widget.title];
                    var userData = UserData(
                      imageSrc: sns['image'],
                      title: widget.title,
                      deepLink: sns['deeplink'],
                      account: _controller.text,
                    );
                    Navigator.pop(context, userData);
                  }
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
    );
  }
}
