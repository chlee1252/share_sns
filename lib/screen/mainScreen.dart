import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:sharesns/screen/firstScreen.dart';
import 'package:sharesns/widget/circularButton.dart';
import 'package:sharesns/widget/customSwiper.dart';

import 'addScreen.dart';

//TODO: Add Account Page
//TODO: Firebase or LocalStorage for offline service?
//TODO: NFC Connect
//TODO: Facebook API / KakaoTalk API to get account profile

class MainScreen extends StatefulWidget {
  static final String id = "MainScreen";
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List images = [
    "asset/facebook.jpeg",
    "asset/instagram.jpeg",
    "asset/kakao.jpeg"
  ];
  var index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        actions: [
          FlatButton(
            child: Text(
              "Logout",
              style: TextStyle(color: Colors.black, fontSize: 20.0),
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, FirstScreen.id);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 10.0),
              child: Center(
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    this.index = index;
                    return Card(
                      elevation: 3.0,
                      clipBehavior: Clip.antiAlias,
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
                  itemWidth: MediaQuery.of(context).size.width * 0.8,
                  pagination: SwiperPagination(
                    builder: SwiperCustomPagination(
                      builder:
                          (BuildContext context, SwiperPluginConfig config) {
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
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            height: MediaQuery.of(context).size.height * 0.2,
            child: Row(
              children: [
                Expanded(
                  child: CircularButton(
                    title: "Add",
                    fontColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, AddScreen.id);
                    },
                  )
                ),
                SizedBox(
                  width: 5.0,
                ),
                Expanded(
                  child: CircularButton(
                    title: "Share",
                    color: Colors.white,
                    onPressed: () {
                      print("Share ${this.index}");
                    }
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
