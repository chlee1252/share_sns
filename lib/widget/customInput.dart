import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  CustomInput({this.hintText, this.borderColor, this.obscureText=false, this.onChanged});

  final String hintText;
  final Color borderColor;
  final bool obscureText;
  final ValueChanged<String> onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: 45.0,
        child: TextField(
          obscureText: this.obscureText,
          onChanged: this.onChanged,
          decoration: InputDecoration(
              hintText: this.hintText,
              contentPadding: EdgeInsets.all(15.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: this.borderColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: this.borderColor, width: 2.0),
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              )
          ),
        ),
      ),
    );
  }
}
