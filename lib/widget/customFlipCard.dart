import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:sharesns/widget/ssnCard.dart';
import 'package:sharesns/sns/snsData.dart';
import 'package:qr_flutter/qr_flutter.dart';

class CustomFlipCard extends StatelessWidget {
  CustomFlipCard({this.imageSrc, this.account="", this.title});

  final String imageSrc;
  final String account;
  final String title;
  @override
  Widget build(BuildContext context) {
    // fb://profile?id={}
    // instagram://user?username={}
    // kakaolink://user
    // snapchat://add
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
              data: "${Data.SNSData[title]}$account",
              version: QrVersions.auto,
              size: 200,
            ),
          ),
        ),
      ),
    );
  }
}
