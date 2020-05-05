import 'package:localstorage/localstorage.dart';

class Storage {
  LocalStorage storage = LocalStorage('instaShare.json');

  isReady() async {
    bool ready = await storage.ready;
    return ready;
  }

  setItem(item) {
    storage.setItem('InstaShare_item', item);
  }

  getItem() {
    final item = storage.getItem('item');

    return item;
  }

}