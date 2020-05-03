import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:sharesns/widget/ssnCard.dart';

class CustomFlipCard extends StatelessWidget {
  CustomFlipCard({this.imageSrc, this.account=""});

  final String imageSrc;
  final String account;
  @override
  Widget build(BuildContext context) {
    return FlipCard(
      direction: FlipDirection.HORIZONTAL,
      speed: 500,
      front: SSNCard(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Image.asset(
            imageSrc,
            fit: BoxFit.fill,
          ),
        ),
      ),
      back: SSNCard(
        child: Container(
          child: Center(
            child: Text(
              account,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
