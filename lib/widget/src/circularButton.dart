import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  CircularButton(
      {this.title="",
      this.color=Colors.black,
      this.fontColor=Colors.black,
      this.borderColor=Colors.black,
      this.onPressed});

  final String title;
  final Color color;
  final Color fontColor;
  final Color borderColor;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: BorderSide(color: this.borderColor),
      ),
      color: this.color,
      child: Text(
        this.title,
        style: TextStyle(color: this.fontColor, fontWeight: FontWeight.bold),
      ),
      onPressed: this.onPressed,
    );
  }
}
