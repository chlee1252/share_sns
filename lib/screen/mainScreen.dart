import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:sharesns/storage/storage.dart';
import 'package:sharesns/widget/mainScreenWidget.dart';

//TODO: QR Code Scanner
//TODO: Tutorial Screen
//TODO: APIs (Especially Facebook)
//TODO: All Share Method

class MainScreen extends StatefulWidget {
  static final String id = "MainScreen";
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Map list = {};
  int index;
  bool tutorial = true;
  Storage storage = new Storage();

  @override
  void initState() {
    super.initState();
    storage.isReady().then((data) {
      setState(() {
        data ? list = storage.getItem() : list = {};
        if (list.isNotEmpty) index = 0;
      });
    });
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
            child: this.list.isEmpty
                ? Center(
                    child: Text("Empty"),
                  )
                : Container(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Center(
                      child: Swiper(
                        itemBuilder: (BuildContext context, int index) {
                          final current = list[list.keys.elementAt(index)];
                          return CustomFlipCard(
                            imageSrc: current.imageSrc,
                            title: current.title,
                            account: current.account,
                            deepLink: current.deepLink,
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
                            builder: (BuildContext context,
                                SwiperPluginConfig config) {
                              return CustomSwiper(
                                config: config,
                              );
                            },
                          ),
                        ),
                        itemCount: list.length,
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
                            list[value.title] = value;
                            if (this.index == null) this.index = 0;
                            storage.setItem(list);
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
                            storage.clearItem();
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
