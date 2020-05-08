import 'package:flutter/material.dart';

class SSNCard extends StatelessWidget {
  SSNCard({this.child});

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: this.child == null ? Container(child: Text("Empty Card")) : this.child,
    );
  }
}
