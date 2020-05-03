import 'package:flutter/material.dart';
import 'package:sharesns/widget/cardButton.dart';
import 'package:sharesns/widget/customInput.dart';

//TODO: Add Screen design and implement
class AddScreen extends StatefulWidget {
  AddScreen({this.index});

  static final String id = "AddScreen";
  final int index;
  @override
  _AddScreenState createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  var title_list = ["Facebook", "Instagram", "KakaoTalk"];
  @override
  Widget build(BuildContext context) {
    print(widget.index);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(this.title_list[widget.index], style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 20.0,),
          CustomInput(
            hintText: "Please type your ${this.title_list[widget.index]} account",
            borderColor: Colors.black,
            onChanged: (value) {
              print(value);
            },
          ),
          CardButton(
            title: "Add",
            onPressed: () {
              //TODO: Add to Firebase or emulate to NFC
              print(title_list[widget.index]);
            },
            color: Colors.black
          ),
          CardButton(
            title: "Cancel",
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
