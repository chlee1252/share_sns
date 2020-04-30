import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  CardButton({this.title, this.onPressed, this.color});

  final String title;
  final Function onPressed;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: 50.0,
        child: Card(
          elevation: 3.0,
          color: this.color,
          shadowColor: Colors.black,
          child: Center(
            child: Text(
              this.title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                letterSpacing: 2.0,
              ),
            ),
          ),
        ),
      ),
      onPressed: this.onPressed,
    );
  }
}
