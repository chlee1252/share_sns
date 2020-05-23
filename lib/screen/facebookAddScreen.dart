//This is Temp
import 'package:flutter/material.dart';
import 'package:sharesns/module/userData.dart';
import 'package:sharesns/sns/snsData.dart';
import 'package:sharesns/widget/addScreenWidget.dart';
import 'package:sharesns/service/facebookID.dart';

class FacebookAddScreen extends StatefulWidget {
  @override
  _FacebookAddScreenState createState() => _FacebookAddScreenState();
}

// TODO: link or user input link..? How to convert url to applink

class _FacebookAddScreenState extends State<FacebookAddScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Facebook",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          RaisedButton(
            child: Text("Facebook LogIn"),
            onPressed: () async {
              final data = await Login();
              print(data);
              if (data != null) {
                var sns = Data.SNSData["Facebook"];
                var userData = UserData(
                  imageSrc: sns['image'],
                  title: "Facebook",
                  deepLink: sns['deeplink'],
                  account: data['id'],
                );
                Navigator.pop(context, userData);
              }
            },
          ),
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
