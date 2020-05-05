import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:sharesns/widget/circularButton.dart';
import 'package:sharesns/widget/customFlipCard.dart';
import 'package:sharesns/widget/customSwiper.dart';
import 'package:sharesns/widget/slidePop.dart';

//TODO: Add Account Page
//TODO: Firebase or LocalStorage for offline service?
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
  List account = [
    "changhwan.lee.71",
    "chlee1127",
    "",
  ];
  var titleList = ["Facebook", "Instagram", "Snapchat"];
  var list = [];
  var index;

  @override
  void initState() {
    super.initState();
  }

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
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 10.0),
              child: Center(
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return CustomFlipCard(
                      imageSrc: images[index],
                      title: this.titleList[index],
                      account: this.account[index],
                    );
                  },
                  onIndexChanged: (index) {
                    setState(() {
                      this.index = index;
                    });
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
                    onPressed: () async {
                      await showSlideDialog(context).then((value) {
                        setState(() {
                          if (value != null) {
                            print(value);
                          }
                        });
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Expanded(
                  child: CircularButton(
                    title: "Share",
                    color: Colors.white,
                    onPressed: this.index == null
                        ? null
                        : () {
                            // TODO: QR Reader
                            print("Share ${this.index}");
                          },
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
