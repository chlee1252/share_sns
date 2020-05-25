import "package:provider/provider.dart";
import "package:flutter/foundation.dart";
import 'package:sharesns/module/userData.dart';

class UserDataSet with ChangeNotifier {
  Map _data = {};

  Map getData() => _data;

  void setOneData(String value, UserData account) {
    _data[value] = account;
    notifyListeners();
  }

  void setAllData(Map localStorage) {
    _data = localStorage;
    notifyListeners();
  }
}