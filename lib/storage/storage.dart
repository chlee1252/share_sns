import 'package:localstorage/localstorage.dart';
import 'package:sharesns/module/userData.dart';

class Storage {
  LocalStorage storage = LocalStorage('instaShare.json');

  isReady() async {
    bool ready = await storage.ready;
    return ready;
  }

  toJSON(Map item) {
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
    final item = storage.getItem('InstaShare_item');
    if (item != null) {
      item.forEach((k, v) {
        item[k] = UserData(
          imageSrc: v["imageSrc"],
          title: v['title'],
          account: v['account'],
          deepLink: v['deepLink'],
        );
      });
    }
    return item;
  }

}