import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sharesns/module/emailValidationProvider.dart';
import 'package:sharesns/screen/addScreen.dart';
import 'package:sharesns/screen/mainScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<EmailValidateProvider>(
          create: (context) => EmailValidateProvider(),
        )
      ],
      child: MaterialApp(
        title: "Instant Share",
        theme: ThemeData(
          primaryColor: Colors.white,
        ),
        home: MainScreen(),
        initialRoute: MainScreen.id,
        routes: {
          MainScreen.id: (context) => MainScreen(),
          AddScreen.id: (context) => AddScreen(),
        },
      ),
    );
  }
}
