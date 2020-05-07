import 'package:localstorage/localstorage.dart';
import 'package:sharesns/module/userData.dart';

class Storage {
  LocalStorage storage = LocalStorage('instaShare.json');

  // Check if the storage is ready
  isReady() async {
    bool ready = await storage.ready;
    return ready;
  }

  // Clearing Item (Dubug Code) Maybe use it later
  clearItem() async {
    await storage.clear();
  }

  // Convert original Data to JSON friendly
  toJSON(Map item) {
    Map hash = Map();
    item.forEach((k, v) {
      hash[k] = v.toJSON();
    });
    return hash;
  }

  // Set items to local Storage. ID: InstaShare_item
  setItem(item) {
    var newItem = toJSON(item);
    storage.setItem('InstaShare_item', newItem);
  }

  // Get items from the local Storage, if there is none, it returns empty
  getItem() {
    var item = storage.getItem('InstaShare_item');
    if (item != null) {
      item.forEach((k, v) {
        item[k] = UserData(
          imageSrc: v["imageSrc"],
          title: v['title'],
          account: v['account'],
          deepLink: v['deepLink'],
        );
      });
    } else {
      item = {};
    }
    return item;
  }

}