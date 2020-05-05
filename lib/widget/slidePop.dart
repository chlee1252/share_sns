import 'package:flutter/material.dart';
import 'package:sharesns/screen/addScreen.dart';
import 'package:sharesns/sns/snsData.dart';
import 'package:slide_popup_dialog/slide_popup_dialog.dart' as slideDialog;

showSlideDialog(BuildContext context) async {
  final result = await slideDialog.showSlideDialog(
    context: context,
    child: Expanded(
      child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            final current = Data.SNSData.keys.elementAt(index);
            return Container(
              height: 80,
              child: Card(
                color: Colors.white,
                elevation: 3.0,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: ListTile(
                  title: Center(child: Text(current)),
                  onTap: () async {
                    final data = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return AddScreen(
                            title: current,
                          );
                        },
                      ),
                    );
                    Navigator.pop(context, data);
                  },
                ),
              ),
            );
          },
          itemCount: Data.SNSData.length),
    ),
  );
  return result;
}
