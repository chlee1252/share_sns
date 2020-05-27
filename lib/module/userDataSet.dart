/*
  Name        : userDataSet.dart
  Author      : Changhwan Lee
  Date        : 05/26/2020
  Description : Provider for the UserData. Purpose of state management
 */

import "package:flutter/foundation.dart";
import 'package:sharesns/module/userData.dart';
import 'package:sharesns/storage/storage.dart';

class UserDataSet with ChangeNotifier {
  Map _data = {};

  Map getData() => _data;

  // Add Item
  void setOneData(String value, UserData account) {
    _data[value] = account;
    notifyListeners();
  }

  // Getting Data from local storage
  void setAllData() {
    Storage storage = new Storage();
    storage.isReady().then((local) {
      local ? _data = storage.getItem() : _data = {};
    });
    notifyListeners();
  }

  // Constructor
  UserDataSet() {
    setAllData();
  }

}