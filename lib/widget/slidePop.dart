import 'package:flutter/material.dart';
import 'package:sharesns/screen/addScreen.dart';
import 'package:sharesns/sns/snsData.dart';
import 'package:slide_popup_dialog/slide_popup_dialog.dart' as slideDialog;

void showSlideDialog(BuildContext context) {
  slideDialog.showSlideDialog(
    context: context,
    child: Expanded(
      child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            final current = Data.SNSData.keys.elementAt(index);
            return Container(
              height: 80,
              child: Card(
                color: Colors.white70,
                elevation: 3.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: ListTile(
                  title: Center(child: Text(current)),
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return AddScreen(title: current,);
                    }));
                  },
                ),
              ),
            );
          },
          itemCount: Data.SNSData.length),
    ),
  );
}
