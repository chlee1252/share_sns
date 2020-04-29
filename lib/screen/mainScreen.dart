import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:sharesns/widget/customSwiper.dart';

//TODO: Login / Registration Page
//TODO: Add Account Page
//TODO: Firebase
//TODO: NFC Connect
//TODO: Facebook API / KakaoTalk API to get account profile

class MainScreen extends StatefulWidget {
  static String id = "MainScreen";
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List images = [
    "asset/facebook.jpeg",
    "asset/instagram.jpeg",
    "asset/kakao.jpeg"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: false,
          title: Text(
            "InstaShare",
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.share,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          onPressed: () => print("Clicked"),
        ),
        body: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 3.0,
              clipBehavior: Clip.antiAlias,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  images[index],
                  fit: BoxFit.fill,
                ),
              ),
            );
          },
          scale: 0.5,
          viewportFraction: 0.5,
          itemHeight: MediaQuery.of(context).size.height * 0.80,
          itemWidth: MediaQuery.of(context).size.width * 0.8,
          pagination: SwiperPagination(
            margin: EdgeInsets.all(8.0),
            builder: SwiperCustomPagination(
              builder: (BuildContext context, SwiperPluginConfig config) {
                return CustomSwiper(
                  config: config,
                );
              },
            ),
          ),
          itemCount: 3,
          layout: SwiperLayout.STACK,
        ),
      ),
    );
  }
}
