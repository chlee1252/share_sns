import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  CustomInput({this.controller, this.hintText, this.borderColor, this.obscureText=false, this.onChanged, this.isError=false});

  final TextEditingController controller;
  final String hintText;
  final Color borderColor;
  final bool obscureText;
  final ValueChanged<String> onChanged;
  final bool isError;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        child: TextField(
          controller: this.controller,
          obscureText: this.obscureText,
          onChanged: this.onChanged,
          decoration: InputDecoration(
              hintText: this.hintText,
              errorText: this.isError ? "Please check your email": null,
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
