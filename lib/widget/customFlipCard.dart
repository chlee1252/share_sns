import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:sharesns/widget/ssnCard.dart';
import 'package:qr_flutter/qr_flutter.dart';

class CustomFlipCard extends StatelessWidget {
  CustomFlipCard({this.imageSrc, this.account="", this.title, this.deepLink});

  final String imageSrc;
  final String account;
  final String title;
  final String deepLink;
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
            child: QrImage(
              data: "${this.deepLink}${this.account}",
              version: QrVersions.auto,
              size: 200,
            ),
          ),
        ),
      ),
    );
  }
}
