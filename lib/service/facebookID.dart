import 'dart:convert';

import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:http/http.dart' as http;

Login () async {
  final facebookLogin = FacebookLogin();
  final result = await facebookLogin.logIn(['email']);
  var data;
  switch (result.status) {
    case FacebookLoginStatus.loggedIn:
      data = getID(result.accessToken.token);
      break;

    case FacebookLoginStatus.cancelledByUser:
      print("canceled by user");
      break;

    case FacebookLoginStatus.error:
      print("Error: ${result.errorMessage}");
      break;
  }

  return data;
}

getID(String token) async {
  final graphResponse = await http.get('https://graph.facebook.com/v2.12/me?fields=email&access_token=$token');
  final profile = jsonDecode(graphResponse.body);
  return profile;
}
