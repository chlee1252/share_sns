import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class CustomSwiper extends StatelessWidget {
  CustomSwiper({this.config});

  final config;
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: DotSwiperPaginationBuilder(
          color: Colors.grey,
          activeColor: Colors.black,
          size: 10.0,
          activeSize: 12.0,
        ).build(context, config),
      ),
      constraints: BoxConstraints.expand(height: 50.0),
    );
  }
}
