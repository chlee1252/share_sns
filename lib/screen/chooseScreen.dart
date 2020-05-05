import 'package:flutter/material.dart';
import 'package:sharesns/screen/addScreen.dart';
import 'package:sharesns/sns/snsData.dart';

class ChooseScreen extends StatefulWidget {
  @override
  _ChooseScreenState createState() => _ChooseScreenState();
}

class _ChooseScreenState extends State<ChooseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose SNS"),
      ),
      body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            final current = Data.SNSData.keys.elementAt(index);
            return Container(
              height: 80,
              child: Card(
                color: Colors.grey,
                elevation: 3.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: ListTile(
                  title: Center(child: Text(current)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return AddScreen(title: current,);
                    }));
                  },
                ),
              ),
            );
          },
          itemCount: Data.SNSData.length),
    );
  }
}
