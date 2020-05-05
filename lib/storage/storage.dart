import 'package:localstorage/localstorage.dart';
import 'package:sharesns/module/userData.dart';

class Storage {
  LocalStorage storage = LocalStorage('instaShare.json');

  isReady() async {
    bool ready = await storage.ready;
    return ready;
  }

  toJSON(Map<String, UserData> item) {
    Map hash = Map();
    item.forEach((k, v) {
      hash[k] = v.toJSON();
    });
    return hash;
  }

  setItem(item) {
    var newItem = toJSON(item);
    storage.setItem('InstaShare_item', newItem);
  }

  getItem() {
    Map result = {};
    final item = storage.getItem('InstaShare_item');
    if (item != null) {
      print(item);
    }
    return result;
  }

}