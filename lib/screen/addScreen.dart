import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sharesns/module/emailValidationProvider.dart';
import 'package:sharesns/module/userData.dart';
import 'package:sharesns/sns/snsData.dart';
import 'package:sharesns/widget/addScreenWidget.dart';

//TODO: Add Screen design and implement
// ignore: must_be_immutable
class AddScreen extends StatelessWidget {
  AddScreen({this.title});
  
  static final String id = "AddScreen";
  final String title;

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              this.title,
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
            hintText: "Please type your ${this.title} account",
            borderColor: Colors.black,
            isError: Provider.of<EmailValidateProvider>(context).isValidate(),
          ),
          CardButton(
              title: "Add",
              onPressed: () {
                if (this.title == "Email" && !EmailValidator.validate(_controller.text)) {
                  Provider.of<EmailValidateProvider>(context, listen:false).changeValidate(true);
                } else {
                  if (_controller.text.length != 0) {
                    var sns = Data.SNSData[this.title];
                    var userData = UserData(
                      imageSrc: sns['image'],
                      title: this.title,
                      deepLink: sns['deeplink'],
                      account: _controller.text,
                    );
                    Provider.of<EmailValidateProvider>(context, listen:false).cancel(false);
                    Navigator.pop(context, userData);
                  }
                }
              },
              color: Colors.black),
          CardButton(
            title: "Cancel",
            onPressed: () {
              Provider.of<EmailValidateProvider>(context, listen:false).cancel(false);
              Navigator.pop(context, null);
            },
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
