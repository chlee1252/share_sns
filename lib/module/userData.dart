class UserData {
  final String imageSrc;
  final String title;
  final String account;
  final String deepLink;

  UserData({this.imageSrc, this.title, this.account, this.deepLink});

  toJSON() {
    Map<String, dynamic> map = new Map();
    map['imageSrc'] = this.imageSrc;
    map['title'] = this.title;
    map['account'] = this.account;
    map['deepLink'] = this.deepLink;

    return map;
  }
}